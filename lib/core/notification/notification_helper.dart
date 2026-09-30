import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:firebase_auth/firebase_auth.dart';
import "package:flutter_local_notifications/flutter_local_notifications.dart";

final FirebaseAuth _auth = FirebaseAuth.instance;
final FirebaseMessaging _fcm = FirebaseMessaging.instance;
final FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
    FlutterLocalNotificationsPlugin();

class NotificationHelper {
  static Future<void> notificationsEnabledOrDisabled(bool enabled) async {
    try {
      if (enabled) {
        final NotificationSettings setting = await _fcm.requestPermission(
          alert: true,
          badge: true,
          sound: true,
        );

        if (setting.authorizationStatus == AuthorizationStatus.authorized) {
          String? token = await _fcm.getToken();

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

  // init notification
  static Future<void> initNotifications() async {
    const AndroidInitializationSettings initializationSettingsAndroid =
        AndroidInitializationSettings('@mipmap/ic_launcher');

    const DarwinInitializationSettings iosInitializationSettings =
        DarwinInitializationSettings();

    const InitializationSettings initializationSettings =
        InitializationSettings(
          android: initializationSettingsAndroid,
          iOS: iosInitializationSettings,
        );

    await flutterLocalNotificationsPlugin.initialize(
      settings: initializationSettings,
    );
  }

  // showing notification
  static Future<void> showNotification({
    required String senderName,
    required String notificationMessage,
    required String chatRoomId,
  }) async {
    final id = chatRoomId.hashCode.toSigned(32);
    Future.delayed(Duration.zero, () {
      flutterLocalNotificationsPlugin.show(
        id: id,
        title: senderName,
        body: notificationMessage,
      );
    });
  }
}
