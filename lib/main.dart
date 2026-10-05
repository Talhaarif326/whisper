import 'package:flutter/material.dart';
import 'package:whisper/core/app_routes/routes_manager.dart';
import 'package:whisper/core/app_colors/app_theme_manager.dart';

// ignore: depend_on_referenced_packages
import 'package:firebase_core/firebase_core.dart';
import 'package:whisper/core/notification/notification_helper.dart';
import 'firebase_options.dart';

/// Initializes Flutter, Firebase, and notifications before launching the app.
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);

  await NotificationHelper.initNotifications();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<ThemeMode>(
      valueListenable: AppThemeManager.themeMode,
      builder: (context, themeMode, child) => MaterialApp(
        title: 'Whisper',
        theme: AppThemeManager.lightTheme,
        darkTheme: AppThemeManager.darkTheme,
        themeMode: themeMode,
        initialRoute: RoutesManager.splashScreen,
        onGenerateRoute: RoutesGenerator.generateRoute,
      ),
    );
  }
}
