import 'package:flutter/material.dart';
import 'package:whisper/features/resources/barrel.dart';

class RoutesManager {
  static const String splashScreen = "/splashScreen";
  static const String onBoardingScreen = "/onBoardingScreen";
  static const String chatScreen = "/chatScreen";
  static const String signUpScreen = "/signUpScreen";
  static const String profileScreen = "/profileScreen";
  static const String settingScreen = "/settingScreen";
  static const String loginScreen = "/loginScreen";
}

class RoutesGenerator {
  static Route<dynamic> generateRoute(RouteSettings route) {
    switch (route.name) {
      case RoutesManager.splashScreen:
        return MaterialPageRoute(builder: (_) => SplashScreen());
      case RoutesManager.onBoardingScreen:
        return MaterialPageRoute(builder: (_) => OnboardingScreen());
      case RoutesManager.chatScreen:
        return MaterialPageRoute(builder: (_) => ChatScreen());
      case RoutesManager.signUpScreen:
        return MaterialPageRoute(builder: (_) => SignUpScreen());
      case RoutesManager.profileScreen:
        return MaterialPageRoute(builder: (_) => ProfileScreen());
      case RoutesManager.settingScreen:
        return MaterialPageRoute(builder: (_) => SettingScreen());
      case RoutesManager.loginScreen:
        return MaterialPageRoute(builder: (_) => LoginScreen());

      default:
        return undefinedRoute();
    }
  }

  static Route<dynamic> undefinedRoute() {
    return MaterialPageRoute(
      builder: (contex) => Scaffold(body: Center(child: Text("Undefin"))),
    );
  }
}
