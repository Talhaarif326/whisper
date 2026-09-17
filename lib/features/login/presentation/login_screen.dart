import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:whisper/core/app_routes/routes_manager.dart';

import 'package:whisper/core/widgets/widget.dart';
import 'package:whisper/features/login/data/repository_impl.dart';

import 'package:whisper/features/login/presentation/bloc/login_bloc.dart';

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
      create: (context) => LoginBloc(loginRepository: RepositoryImpl()),
      child: BlocListener<LoginBloc, LoginState>(
        listenWhen: (previous, current) =>
            previous.errorMessage != current.errorMessage,
        listener: (context, state) {
          if (state.errorMessage == "Login successful") {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text("Login successful"),
                backgroundColor: Colors.green,
              ),
            );
            Navigator.pushReplacementNamed(context, RoutesManager.chatScreen);
          } else if (state.errorMessage.isNotEmpty) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text(state.errorMessage),
                backgroundColor: Colors.red,
              ),
            );
          }
        },
        child: Scaffold(
          body: Padding(
            padding: const EdgeInsets.all(16),
            child: Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Welcome Back",
                    style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 100),
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
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          errorBorder: OutlineInputBorder(),
                          hint: Text("Email"),
                        ),
                      );
                    },
                  ),
                  SizedBox(height: 10),
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
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          errorBorder: OutlineInputBorder(),
                          hint: Text("Password"),
                        ),
                      );
                    },
                  ),
                  SizedBox(height: 5),
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
                  SizedBox(height: 80),
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
