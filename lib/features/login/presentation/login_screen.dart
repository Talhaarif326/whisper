import 'package:whisper/core/app_routes/routes_manager.dart';
import 'package:whisper/core/presentation/presentation_barrel.dart';
import 'package:whisper/features/login/login_barrel.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LoginBloc(repository: LoginRepositoryImpl()),
      child: BlocListener<LoginBloc, LoginState>(
        listenWhen: (previous, current) =>
            previous.errorMessage != current.errorMessage,
        listener: (context, state) {
          if (state.errorMessage == "Login successful") {
            final colorScheme = Theme.of(context).colorScheme;
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text(
                  "Login successful",
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
                backgroundColor: colorScheme.primary,
              ),
            );
            Navigator.pushReplacementNamed(
              context,
              RoutesManager.contactsScreen,
            );
          } else if (state.errorMessage.isNotEmpty) {
            final colorScheme = Theme.of(context).colorScheme;
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text(
                  state.errorMessage,
                  style: TextStyle(color: colorScheme.onError),
                ),
                backgroundColor: colorScheme.error,
              ),
            );
          }
        },
        child: Scaffold(
          body: AppScreenContent(
            scrollable: true,
            centerVertically: true,
            child: Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Welcome Back",
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                  SizedBox(height: AppPadding.padding24),
                  BlocBuilder<LoginBloc, LoginState>(
                    builder: (context, state) {
                      return TextFormField(
                        keyboardType: TextInputType.emailAddress,

                        autocorrect: false,
                        onChanged: (value) {
                          context.read<LoginBloc>().add(
                            LoginEvent.onEmailChanged(value),
                          );
                        },
                        validator: (value) {
                          if (value == null) {
                            return "Please Enter Your Email";
                          }
                          if (!RegExp(
                            r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$',
                          ).hasMatch(value)) {
                            return "Enter a valid password";
                          }
                          return null;
                        },
                        decoration: InputDecoration(hint: Text("Email")),
                      );
                    },
                  ),
                  SizedBox(height: AppPadding.padding16),
                  BlocBuilder<LoginBloc, LoginState>(
                    builder: (context, state) {
                      return TextFormField(
                        obscureText: true,
                        autocorrect: false,
                        onChanged: (value) {
                          context.read<LoginBloc>().add(
                            LoginEvent.onPasswordChanged(value),
                          );
                        },
                        validator: (value) {
                          if (value == null) {
                            return "Please Enter your password";
                          }
                          if (value.length < 4) {
                            return "Please Enter a Valid password";
                          }
                          return null;
                        },
                        decoration: InputDecoration(hint: Text("Password")),
                      );
                    },
                  ),
                  SizedBox(height: AppSize.sizeDouble5),
                  Row(
                    children: [
                      TextButton(
                        onPressed: () {
                          Navigator.pushReplacementNamed(
                            context,
                            RoutesManager.forgotScreen,
                          );
                        },
                        child: Text("Forgot password"),
                      ),
                      Spacer(),
                      TextButton(
                        onPressed: () {
                          Navigator.pushReplacementNamed(
                            context,
                            RoutesManager.signUpScreen,
                          );
                        },
                        child: Text("Create Account"),
                      ),
                    ],
                  ),
                  SizedBox(height: AppPadding.padding24),
                  BlocBuilder<LoginBloc, LoginState>(
                    buildWhen: (previous, current) => previous != current,
                    builder: (context, state) {
                      return ContinueButton(
                        onPressed: () {
                          print("login Button presseed");
                          if (_formKey.currentState!.validate()) {
                            context.read<LoginBloc>().add(
                              LoginEvent.onLoginPressed(),
                            );
                          }
                        },
                        name: "Login",
                      );
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
