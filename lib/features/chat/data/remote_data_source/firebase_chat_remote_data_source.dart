import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:whisper/features/chat/data/remote_data_source/chat_notification_data_source.dart';
import 'package:whisper/features/chat/data/remote_data_source/remote_data_source.dart';
import 'package:whisper/features/chat/domain/model/message_response_model.dart';
import 'package:whisper/features/chat/domain/model/messege_sending_model.dart';

class FirebaseChatRemoteDataSource implements ChatRemoteDataSource {
  FirebaseChatRemoteDataSource({
    required this.recipientId,
    required this.notificationDataSource,
    FirebaseFirestore? firestore,
    FirebaseAuth? auth,
  }) : _firestore = firestore ?? FirebaseFirestore.instance,
       _auth = auth ?? FirebaseAuth.instance;

  final String recipientId;
  final ChatNotificationDataSource notificationDataSource;
  final FirebaseFirestore _firestore;
  final FirebaseAuth _auth;

  /// Creates a stable room key by sorting both participant IDs.
  String _chatRoomId(String userId, String otherUserId) {
    final userIds = [userId, otherUserId]..sort();
    return userIds.join('_');
  }

  /// Persists a message, then asks the notification source to notify its recipient.
  @override
  Future<void> sendMessage(MessageSendingModel message) async {
    final user = _auth.currentUser;
    if (user == null) {
      throw StateError('Cannot send a message without an authenticated user.');
    }

    final chatRoomId = _chatRoomId(user.uid, message.recipiantId);
    final senderName = user.displayName ?? 'Unknown';

    await _firestore
        .collection('chat')
        .doc(chatRoomId)
        .collection('messages')
        .add({
          'message': message.message,
          'sendername': senderName,
          'isMine': user.uid,
          'recipiantId': message.recipiantId,
          'timestamp': DateTime.now(),
        });

    await notificationDataSource.notifyRecipient(
      recipientId: message.recipiantId,
      senderName: senderName,
      message: message.message,
      chatRoomId: chatRoomId,
    );
  }

  /// Streams the conversation newest-first and maps Firestore documents to domain messages.
  @override
  Stream<List<MessageResponseModel>> fetchMessages() {
    final user = _auth.currentUser;
    if (user == null) {
      throw StateError('Cannot fetch messages without an authenticated user.');
    }

    final chatRoomId = _chatRoomId(user.uid, recipientId);
    return _firestore
        .collection('chat')
        .doc(chatRoomId)
        .collection('messages')
        .orderBy('timestamp', descending: true)
        .snapshots()
        .map(
          (snapshot) => snapshot.docs.map((document) {
            final data = document.data();
            final timestamp = data['timestamp'];
            if (timestamp is! Timestamp) {
              throw FormatException(
                'Message ${document.id} has an invalid timestamp.',
              );
            }

            final isMine = data['isMine'] == user.uid;
            return MessageResponseModel.fromJson({
              'message': data['message'],
              'senderName': isMine ? 'you' : data['sendername'],
              'isMine': isMine,
              'timestamp': timestamp.toDate().toIso8601String(),
            });
          }).toList(),
        );
  }
}
