import 'package:firebase_auth/firebase_auth.dart';
import 'package:whisper/core/notification/notification_helper.dart';

class SettingRemoteDataSource {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  /// Signs out the authenticated Firebase user.
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

  /// Applies the requested notification preference for the current user.
  Future<void> notificationsEnabledOrDisabled(bool enabled) async {
    await NotificationHelper.notificationsEnabledOrDisabled(enabled);
  }
}
