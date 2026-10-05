import 'package:whisper/core/app_routes/routes_manager.dart';
import 'package:whisper/core/presentation/presentation_barrel.dart';
import 'package:whisper/features/sign_up/sign_up_barrel.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SignUpBloc(repository: SignUpRepositoryImpl()),

      child: BlocListener<SignUpBloc, SignUpState>(
        listenWhen: (previous, current) =>
            previous.signUpResponse != current.signUpResponse ||
            previous.error != current.error,
        listener: (context, state) {
          if (state.signUpResponse.uid.isNotEmpty) {
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(content: Text("Sign-up successful!")),
            );
            Navigator.pushReplacementNamed(context, RoutesManager.loginScreen);
          } else if (state.error.isNotEmpty) {
            ScaffoldMessenger.of(
              context,
            ).showSnackBar(SnackBar(content: Text(state.error)));
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
                    "Create Account",
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                  SizedBox(height: AppPadding.padding24),
                  BlocBuilder<SignUpBloc, SignUpState>(
                    buildWhen: (previous, current) => previous != current,
                    builder: (context, state) {
                      return TextFormField(
                        keyboardType: TextInputType.name,
                        autocorrect: false,
                        onChanged: (value) {
                          context.read<SignUpBloc>().add(
                            SignUpEvent.onNameChanged(value),
                          );
                        },
                        decoration: InputDecoration(hintText: "Full Name"),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return "Please Enter Your Name";
                          }
                          return null;
                        },
                      );
                    },
                  ),
                  SizedBox(height: AppPadding.padding16),
                  BlocBuilder<SignUpBloc, SignUpState>(
                    builder: (context, state) {
                      return TextFormField(
                        keyboardType: TextInputType.emailAddress,
                        onChanged: (value) {
                          context.read<SignUpBloc>().add(
                            SignUpEvent.onEmailChanged(value),
                          );
                        },
                        decoration: InputDecoration(hintText: "Email"),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return "Please Enter Your Email";
                          }
                          if (!RegExp(
                            r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$',
                          ).hasMatch(value)) {
                            return "Enter a valid email";
                          }
                          return null;
                        },
                      );
                    },
                  ),
                  SizedBox(height: AppPadding.padding16),
                  BlocBuilder<SignUpBloc, SignUpState>(
                    builder: (context, state) {
                      return TextFormField(
                        obscureText: true,
                        onChanged: (value) {
                          context.read<SignUpBloc>().add(
                            SignUpEvent.onPasswordChanged(value),
                          );
                        },
                        decoration: InputDecoration(hintText: "Password"),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return "Please Enter your password";
                          }
                          if (value.length < 6) {
                            return "Please Enter a Valid password";
                          }
                          return null;
                        },
                      );
                    },
                  ),
                  SizedBox(height: AppPadding.padding16),
                  BlocBuilder<SignUpBloc, SignUpState>(
                    builder: (context, state) {
                      return TextFormField(
                        obscureText: true,
                        onChanged: (value) {
                          context.read<SignUpBloc>().add(
                            SignUpEvent.onConfirmPasswordChanged(value),
                          );
                        },
                        decoration: InputDecoration(
                          hintText: "Confirm Password",
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return "Please confirm your password";
                          }
                          if (value !=
                              context.read<SignUpBloc>().state.password) {
                            return "Passwords do not match";
                          }
                          return null;
                        },
                      );
                    },
                  ),
                  SizedBox(height: AppSize.sizeDouble5),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      const Text("Already have an account?"),
                      TextButton(
                        onPressed: () {
                          Navigator.pushReplacementNamed(
                            context,
                            RoutesManager.loginScreen,
                          );
                        },
                        child: const Text("Login"),
                      ),
                    ],
                  ),
                  SizedBox(height: AppPadding.padding24),
                  BlocBuilder<SignUpBloc, SignUpState>(
                    buildWhen: (previous, current) => previous != current,
                    builder: (context, state) {
                      return ContinueButton(
                        onPressed: () {
                          if (_formKey.currentState!.validate()) {
                            context.read<SignUpBloc>().add(
                              SignUpEvent.onSignUp(
                                SignUpRequestModel(
                                  name: state.name,
                                  email: state.email,
                                  password: state.password,
                                  confirmPasswrod: state.confirmPassword,
                                ),
                              ),
                            );
                          }
                        },
                        name: "Sign Up",
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
