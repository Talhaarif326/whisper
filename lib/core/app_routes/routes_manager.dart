import 'package:whisper/core/presentation/presentation_barrel.dart';
import 'package:whisper/features/chat/presentation/chat_screen.dart';
import 'package:whisper/features/contacts/presentation/contacts_screen.dart';
import 'package:whisper/features/forgot/presentation/forgot_screen.dart';
import 'package:whisper/features/login/presentation/login_screen.dart';
import 'package:whisper/features/onboarding/presentation/onboarding_screen.dart';
import 'package:whisper/features/presentation/profile_screen.dart';
import 'package:whisper/features/setting/presentation/setting_screen.dart';
import 'package:whisper/features/sign_up/presentation/sign_up_screen.dart';
import 'package:whisper/features/spash/presentation/splash_screen.dart';

class RoutesManager {
  static const String splashScreen = "/splashScreen";
  static const String onBoardingScreen = "/onBoardingScreen";
  static const String chatScreen = "/chatScreen";
  static const String signUpScreen = "/signUpScreen";
  static const String profileScreen = "/profileScreen";
  static const String settingScreen = "/settingScreen";
  static const String loginScreen = "/loginScreen";
  static const String forgotScreen = "/forgotScreen";
  static const String contactsScreen = "/contactsScreen";
}

class RoutesGenerator {
  /// Builds the route corresponding to a named route and its arguments.
  static Route<dynamic>? generateRoute(RouteSettings route) {
    switch (route.name) {
      case RoutesManager.splashScreen:
        return MaterialPageRoute(builder: (_) => SplashScreen());
      case RoutesManager.onBoardingScreen:
        return MaterialPageRoute(builder: (_) => OnboardingScreen());
      case RoutesManager.chatScreen:
        final chatScreenArg = route.arguments as ChatScreenArg;
        return MaterialPageRoute(
          builder: (_) => ChatScreen(
            recipianID: chatScreenArg.recipiantID,
            name: chatScreenArg.recipiantName,
          ),
        );
      case RoutesManager.signUpScreen:
        return MaterialPageRoute(builder: (_) => SignUpScreen());
      case RoutesManager.profileScreen:
        return MaterialPageRoute(builder: (_) => ProfileScreen());
      case RoutesManager.settingScreen:
        return MaterialPageRoute(builder: (_) => SettingScreen());
      case RoutesManager.loginScreen:
        return MaterialPageRoute(builder: (_) => LoginScreen());
      case RoutesManager.forgotScreen:
        return MaterialPageRoute(builder: (_) => ForgotScreen());
      case RoutesManager.contactsScreen:
        return MaterialPageRoute(builder: (_) => ContactsScreen());

      default:
        return null;
    }
  }

  /// Builds the fallback route used when no route name is recognized.
  static Route<dynamic> undefinedRoute() {
    return MaterialPageRoute(builder: (contex) => SizedBox.shrink());
  }
}
