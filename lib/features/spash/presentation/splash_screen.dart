import 'package:whisper/core/app_routes/routes_manager.dart';
import 'package:whisper/core/presentation/presentation_barrel.dart';
import 'package:whisper/features/spash/splash_barrel.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SplashBloc(
        repository: SplashRepositoryImpl(
          splashRemoteDataSource: SplashRemoteDataSource(),
        ),
      )..add(IsLoggedIn()),
      child: Scaffold(
        body: BlocListener<SplashBloc, SplashState>(
          listenWhen: (previous, current) =>
              previous.isLoggedIn != current.isLoggedIn,
          listener: (context, state) {
            if (state.isLoggedIn!) {
              Navigator.pushReplacementNamed(
                context,
                RoutesManager.contactsScreen,
              );
            }
            if (!state.isLoggedIn!) {
              Navigator.pushReplacementNamed(
                context,
                RoutesManager.loginScreen,
              );
            }
          },
          child: Center(
            child: Container(
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.primary,
              ),
              height: double.infinity,
              width: double.infinity,
              child: Image.asset("lib/core/app_images/ChatAppLogo2.png"),
            ),
          ),
        ),
      ),
    );
  }
}
