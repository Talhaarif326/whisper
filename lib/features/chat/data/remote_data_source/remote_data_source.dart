import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:whisper/features/chat/domain/model/message_response_model.dart';
import 'package:whisper/features/chat/domain/model/messege_sending_model.dart';

class RemoteDataSource {
  RemoteDataSource({required this.recipiant});
  final String recipiant;

  final FirebaseFirestore firebaseFirestore = FirebaseFirestore.instance;

  String chatRoom(String user1, String user2) {
    final ids = [user1, user2]..sort();
    return ids.join('_');
  }

  Future<void> sendMessage(MessageSendingModel message) async {
    final currentUserId = FirebaseAuth.instance.currentUser!.uid;
    final chatRoomId = chatRoom(currentUserId, message.recipiantId);
    try {
      await firebaseFirestore
          .collection('chat')
          .doc(chatRoomId)
          .collection("messages")
          .add({
            'message': message.message,
            'isMine': FirebaseAuth.instance.currentUser!.uid,
            'recipiantId': message.recipiantId,
            'timestamp': DateTime.now(),
          });
    } on Exception catch (e) {
      print("Error occurred while sending message: $e");
      throw Exception(e.toString());
    }
  }

  Stream<List<MessageResponseModel>> fetchMessages() {
    final currentUserID = FirebaseAuth.instance.currentUser!.uid;
    final recipiantId = recipiant;
    final chatRoomId = chatRoom(currentUserID, recipiantId);
    try {
      final response = firebaseFirestore
          .collection('chat')
          .doc(chatRoomId)
          .collection("messages")
          .orderBy("timestamp", descending: true)
          .snapshots();
      return response.map(
        (snapshot) => snapshot.docs.map((doc) {
          final data = doc.data();
          final timestamp = data['timestamp'];

          final isMine = data['isMine'];

          if (timestamp is Timestamp) {
            data['timestamp'] = timestamp.toDate().toIso8601String();
          }
          if (isMine != FirebaseAuth.instance.currentUser!.uid) {
            data['isMine'] = false;
          } else {
            data['isMine'] = true;
          }

          return MessageResponseModel.fromJson(data);
        }).toList(),
      );
    } on Exception catch (e) {
      print(e.toString());
      rethrow;
    } catch (e) {
      throw Exception("Failed to fetch messages. ${e.toString()}");
    }
  }
}
