import 'dart:convert';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:whisper/core/fcm_auth_helper/fcm_auth_helper.dart';

import "package:http/http.dart" as http;

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

      final recipientSnapshot = await FirebaseDatabase.instance
          .ref("users")
          .child(message.recipiantId)
          .get();

      final recipiantToken =
          (recipientSnapshot.value as Map?)?['notificationToken'];

      if (recipiantToken != null) {
        await sendPushNotification(
          recipiantFcmToken: recipiantToken,
          senderName: currentUserId,
          notificationMessage: message.message,
          chatRoomId: chatRoomId,
        );
      }
    } on Exception catch (e) {
      print("Error occurred while sending message: $e");
      throw Exception(e.toString());
    }
  }

  Future<void> sendPushNotification({
    required String recipiantFcmToken,
    required String senderName,
    required String notificationMessage,
    required String chatRoomId,
  }) async {
    try {
      final projectId = "flutter-chat-app-d482d";
      final url = Uri.parse(
        "https://fcm.googleapis.com/v1/projects/$projectId/messages:send",
      );

      final accessToken = await FcmAuthHelper().getFcmToken();

      final payLoad = {
        "message": {
          "token": recipiantFcmToken,
          "notification": {"title": senderName, "body": notificationMessage},
          "data": {
            "click_action": "flutterClickAction",
            "chatRoomId": chatRoomId,
          },
        },
      };

      final response = await http.post(
        url,
        headers: {
          'Authorization': 'Bearer $accessToken',
          'Content-Type': 'application/json',
        },
        body: jsonEncode(payLoad),
      );

      if (response.statusCode == 200) {
        print("Push notification sent successfully");
      } else {
        print("Failed to send push notification");
      }
    } on Exception catch (e) {
      print("error: ${e.toString()}");
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
