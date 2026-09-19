import 'package:firebase_auth/firebase_auth.dart';

class SplashRemoteDataSource {
  Future<User?> isLoggedIn() {
    final FirebaseAuth firebaseAuth = FirebaseAuth.instance;

    return firebaseAuth.authStateChanges().first;
  }
}
