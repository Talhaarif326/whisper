import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_messaging/firebase_messaging.dart';

class SettingRemoteDataSource {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final FirebaseMessaging _fcm = FirebaseMessaging.instance;
  Future<void> signOut() async {
    try {
      await _auth.signOut();
    } on FirebaseAuthException catch (e) {
      print("Firebase Auth Error : ${e.toString()}");
      throw Exception("Firebase Auth Error : ${e.toString()}");
    } on Exception catch (e) {
      print("Error : ${e.toString()}");
      throw Exception("Error : ${e.toString()}");
    }
  }

  Future<void> notificationsEnabledOrDisabled(bool enabled) async {
    try {
      if (enabled) {
        final NotificationSettings setting = await _fcm.requestPermission(
          alert: true,
          badge: true,
          sound: true,
        );

        if (setting.authorizationStatus == AuthorizationStatus.authorized) {
          String? token = await _fcm.getToken();
          print("notificationToken: $token");

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
}
