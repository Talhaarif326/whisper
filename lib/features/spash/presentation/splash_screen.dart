import 'package:flutter/material.dart';
import 'package:whisper/barrel.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  final stopwatch = Stopwatch();
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SplashBloc(),
      child: Scaffold(
        appBar: AppBar(title: Text("SplashScreen")),
        body: BlocListener<SplashBloc, SplashState>(
          listener: (context, state) {
            if (state is SplashNavigater) {
              Navigator.pushReplacementNamed(
                context,
                RoutesManager.loginScreen,
              );
              stopwatch.stop();
              print(stopwatch.elapsed.toString());
            }
          },
          child: Center(
            child: BlocBuilder<SplashBloc, SplashState>(
              builder: (context, state) {
                return ElevatedButton(
                  onPressed: () {
                    stopwatch.start();
                    context.read<SplashBloc>().add(IsLoggedIn());
                  },
                  child: Text("Next"),
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
