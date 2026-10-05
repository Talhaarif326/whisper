import 'package:firebase_auth/firebase_auth.dart';

class SplashRemoteDataSource {
  /// Returns the first Firebase auth-state value to determine session status.
  Future<User?> isLoggedIn() {
    final FirebaseAuth firebaseAuth = FirebaseAuth.instance;

    return firebaseAuth.authStateChanges().first;
  }
}
