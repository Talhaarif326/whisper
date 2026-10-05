import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:firebase_auth/firebase_auth.dart';
import "package:flutter_local_notifications/flutter_local_notifications.dart";

final FirebaseAuth _auth = FirebaseAuth.instance;
final FirebaseMessaging _fcm = FirebaseMessaging.instance;
final FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
    FlutterLocalNotificationsPlugin();

class NotificationHelper {
  /// Requests permission and stores the current user's FCM token when enabled.
  static Future<void> notificationsEnabledOrDisabled(bool enabled) async {
    try {
      if (enabled) {
        final NotificationSettings setting = await _fcm.requestPermission(
          alert: true,
          badge: true,
          sound: true,
        );

        if (setting.authorizationStatus == AuthorizationStatus.authorized) {
          final String? token = await _fcm.getToken();
          if (token != null) {
            String? currentUserId = _auth.currentUser?.uid;

            if (currentUserId != null) {
              final DatabaseReference ref = FirebaseDatabase.instance
                  .ref()
                  .child("users")
                  .child(currentUserId);

              await ref.update({"notificationToken": token});
            }
          }
        }
      }
    } on FirebaseAuthException catch (e) {
      print("Firebase Auth Error : ${e.toString()}");
      throw Exception("Firebase Auth Error : ${e.toString()}");
    } on Exception catch (e) {
      print("Error : ${e.toString()}");
      throw Exception("Error : ${e.toString()}");
    }
  }

  /// Initializes local notifications and listens for foreground FCM messages.
  static Future<void> initNotifications() async {
    const AndroidInitializationSettings initializationSettingsAndroid =
        AndroidInitializationSettings('@mipmap/ic_launcher');

    const DarwinInitializationSettings initializationSettingsIos =
        DarwinInitializationSettings();

    const InitializationSettings initializationSettings =
        InitializationSettings(
          android: initializationSettingsAndroid,
          iOS: initializationSettingsIos,
        );

    await flutterLocalNotificationsPlugin.initialize(
      settings: initializationSettings,
    );

    FirebaseMessaging.onMessage
        .listen((RemoteMessage message) {
          print("Notification received: ${message.notification!.title!}");
          if (message.notification != null) {
            final notification = message.notification;
            showNotification(
              senderName: notification!.title ?? "New Message",
              notificationMessage: notification.body ?? "",
              chatRoomId: message.data['chatRoomId'] ?? "",
            );
          }
        })
        .onError((e) {
          print("Error receiving message: ${e.toString()}");
        });
  }

  /// Displays a local notification for an incoming chat message.
  static Future<void> showNotification({
    required String senderName,
    required String notificationMessage,
    required String chatRoomId,
  }) async {
    final AndroidNotificationDetails androidDetails =
        AndroidNotificationDetails(
          'chat_channel',
          'Chat Channel',
          channelDescription: "Channel for chat notifications",
          importance: Importance.max,
          priority: Priority.high,
        );

    final NotificationDetails notificationDetails = NotificationDetails(
      android: androidDetails,
    );
    final id = chatRoomId.hashCode.toSigned(32);

    flutterLocalNotificationsPlugin.show(
      id: id,
      title: senderName,
      body: notificationMessage,
      notificationDetails: notificationDetails,
    );
  }
}
