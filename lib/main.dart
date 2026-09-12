import 'package:flutter/material.dart';
import 'package:whisper/core/app_routes/routes_manager.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      initialRoute: RoutesManager.splashScreen,
      onGenerateRoute: RoutesGenerator.generateRoute,
    );
  }
}
