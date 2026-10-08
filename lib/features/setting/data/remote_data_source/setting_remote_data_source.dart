import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:whisper/core/notification/notification_helper.dart';

class SettingRemoteDataSource {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  /// Signs out the authenticated Firebase user.
  Future<void> signOut() async {
    try {
      await _auth.signOut();
    } on FirebaseAuthException catch (e) {
      debugPrint("Firebase Auth Error : ${e.toString()}");
      throw Exception("Firebase Auth Error : ${e.toString()}");
    } on Exception catch (e) {
      debugPrint("Error : ${e.toString()}");
      throw Exception("Error : ${e.toString()}");
    }
  }

  /// Reads the persisted notification preference for the current user.
  Future<bool> notificationsEnabled() {
    return NotificationHelper.notificationsEnabled();
  }

  /// Applies the requested notification preference for the current user.
  Future<bool> notificationsEnabledOrDisabled(bool enabled) {
    return NotificationHelper.notificationsEnabledOrDisabled(enabled);
  }
}
