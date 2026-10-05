import 'package:firebase_auth/firebase_auth.dart';

abstract class SplashRepository {
  /// Returns the authenticated user, or null when no session is active.
  Future<User?> checkUserStatus();
}
