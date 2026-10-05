import 'package:flutter/services.dart' show rootBundle;
import 'package:googleapis_auth/auth_io.dart';

class FcmAuthHelper {
  static const _scopes = ['https://www.googleapis.com/auth/firebase.messaging'];

  /// Creates a Google OAuth access token for Firebase Cloud Messaging.
  Future<String> getFcmToken() async {
    final jsonString = await rootBundle.loadString(
      'flutter-chat-app-d482d-firebase-adminsdk-fbsvc-04c46fbb6d.json',
    );
    final credentials = ServiceAccountCredentials.fromJson(jsonString);

    final client = await clientViaServiceAccount(credentials, _scopes);

    final fcmToken = client.credentials.accessToken.data;

    client.close();
    return fcmToken;
  }
}
