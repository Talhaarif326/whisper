import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import "package:flutter_local_notifications/flutter_local_notifications.dart";

final FirebaseAuth _auth = FirebaseAuth.instance;
final FirebaseMessaging _fcm = FirebaseMessaging.instance;
final FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
    FlutterLocalNotificationsPlugin();

class NotificationHelper {
  static bool _tokenRefreshListenerRegistered = false;

  /// Returns whether the current user's notification token is stored.
  static Future<bool> notificationsEnabled() async {
    final userId = _auth.currentUser?.uid;
    if (userId == null) {
      return false;
    }

    final token = await FirebaseDatabase.instance
        .ref()
        .child('users')
        .child(userId)
        .child('notificationToken')
        .get();
    final value = token.value;
    if (value == null) {
      return false;
    }
    if (value is! String) {
      throw const FormatException(
        'The saved notification token has an invalid format.',
      );
    }
    return value.isNotEmpty;
  }

  /// Saves or removes the current user's FCM token according to their choice.
  static Future<bool> notificationsEnabledOrDisabled(bool enabled) async {
    final userId = _auth.currentUser?.uid;
    if (userId == null) {
      throw StateError(
        'Cannot update notification settings without an authenticated user.',
      );
    }

    final userReference = FirebaseDatabase.instance
        .ref()
        .child('users')
        .child(userId);
    if (!enabled) {
      await userReference.child('notificationToken').remove();
      return false;
    }

    final settings = await _fcm.requestPermission(
      alert: true,
      badge: true,
      sound: true,
    );
    if (settings.authorizationStatus != AuthorizationStatus.authorized) {
      return false;
    }

    final token = await _fcm.getToken();
    if (token == null || token.isEmpty) {
      throw StateError('Firebase Messaging did not return a device token.');
    }

    await userReference.update({'notificationToken': token});
    return true;
  }

  /// Initializes local notifications and listens for foreground FCM messages.
  static Future<void> initNotifications() async {
    if (!_tokenRefreshListenerRegistered) {
      _tokenRefreshListenerRegistered = true;
      FirebaseMessaging.instance.onTokenRefresh.listen(
        _updateTokenIfNotificationsEnabled,
        onError: (Object error) {
          debugPrint('Error refreshing notification token: $error');
        },
      );
    }

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
          final notification = message.notification;
          if (notification != null) {
            showNotification(
              senderName: notification.title ?? "New Message",
              notificationMessage: notification.body ?? "",
              chatRoomId: message.data['chatRoomId'] ?? "",
            );
          }
        })
        .onError((e) {
          debugPrint("Error receiving message: $e");
        });
  }

  static Future<void> _updateTokenIfNotificationsEnabled(
    String refreshedToken,
  ) async {
    final userId = _auth.currentUser?.uid;
    if (userId == null) {
      return;
    }

    try {
      final userReference = FirebaseDatabase.instance
          .ref()
          .child('users')
          .child(userId);
      final savedToken = await userReference.child('notificationToken').get();
      final savedValue = savedToken.value;
      if (savedValue is String && savedValue.isNotEmpty) {
        await userReference.update({'notificationToken': refreshedToken});
      }
    } catch (error) {
      debugPrint('Unable to refresh the saved notification token: $error');
    }
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
      iOS: const DarwinNotificationDetails(
        presentAlert: true,
        presentBadge: true,
        presentSound: true,
      ),
    );
    final id = chatRoomId.hashCode.toSigned(32);

    await flutterLocalNotificationsPlugin.show(
      id: id,
      title: senderName,
      body: notificationMessage,
      notificationDetails: notificationDetails,
    );
  }
}
