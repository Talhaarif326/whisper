import 'dart:convert';

import 'package:firebase_database/firebase_database.dart';
import 'package:http/http.dart' as http;
import 'package:whisper/core/fcm_auth_helper/fcm_auth_helper.dart';
import 'package:whisper/features/chat/data/remote_data_source/chat_notification_data_source.dart';

class FirebaseChatNotificationDataSource implements ChatNotificationDataSource {
  FirebaseChatNotificationDataSource({
    FirebaseDatabase? database,
    FcmAuthHelper? authHelper,
  }) : _database = database ?? FirebaseDatabase.instance,
       _authHelper = authHelper ?? FcmAuthHelper();

  static const _projectId = 'flutter-chat-app-d482d';

  final FirebaseDatabase _database;
  final FcmAuthHelper _authHelper;

  /// Looks up the recipient's FCM token and sends a push notification.
  @override
  Future<void> notifyRecipient({
    required String recipientId,
    required String senderName,
    required String message,
    required String chatRoomId,
  }) async {
    final recipientSnapshot = await _database
        .ref('users')
        .child(recipientId)
        .once();
    final recipientData = recipientSnapshot.snapshot.value;
    if (recipientData == null) return;
    if (recipientData is! Map) {
      throw const FormatException('Recipient data has an invalid format.');
    }

    final token = recipientData['notificationToken'];
    if (token == null) return;
    if (token is! String || token.isEmpty) {
      throw const FormatException(
        'Recipient notification token has an invalid format.',
      );
    }

    final uri = Uri.https(
      'fcm.googleapis.com',
      '/v1/projects/$_projectId/messages:send',
    );
    final accessToken = await _authHelper.getFcmToken();
    final response = await http.post(
      uri,
      headers: {
        'Authorization': 'Bearer $accessToken',
        'Content-Type': 'application/json',
      },
      body: jsonEncode({
        'message': {
          'token': token,
          'notification': {'title': senderName, 'body': message},
          'data': {
            'click_action': 'flutterClickAction',
            'chatRoomId': chatRoomId,
          },
        },
      }),
    );
    if (response.statusCode < 200 || response.statusCode >= 300) {
      throw http.ClientException(
        'Failed to send push notification: '
        '${response.statusCode} ${response.body}',
        uri,
      );
    }
  }
}
