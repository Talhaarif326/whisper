import 'package:flutter/material.dart';

import 'package:whisper/core/widgets/widget.dart';
import 'package:whisper/features/sign_up/data/repository/sign_up_repository_impl.dart';
import 'package:whisper/features/sign_up/domain/model/sign_up_request_model.dart';

import 'package:whisper/features/sign_up/presentation/bloc/sign_up_bloc.dart';

import '../../../barrel.dart';

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
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Form(
                key: _formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const SizedBox(height: 100),
                    const Text(
                      "Create Account",
                      style: TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 100),
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
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                            errorBorder: const OutlineInputBorder(),
                            hintText: "Full Name",
                          ),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return "Please Enter Your Name";
                            }
                            return null;
                          },
                        );
                      },
                    ),
                    const SizedBox(height: 10),
                    BlocBuilder<SignUpBloc, SignUpState>(
                      builder: (context, state) {
                        return TextFormField(
                          keyboardType: TextInputType.emailAddress,
                          onChanged: (value) {
                            context.read<SignUpBloc>().add(
                              SignUpEvent.onEmailChanged(value),
                            );
                          },
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                            errorBorder: const OutlineInputBorder(),
                            hintText: "Email",
                          ),
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
                    const SizedBox(height: 10),
                    BlocBuilder<SignUpBloc, SignUpState>(
                      builder: (context, state) {
                        return TextFormField(
                          obscureText: true,
                          onChanged: (value) {
                            context.read<SignUpBloc>().add(
                              SignUpEvent.onPasswordChanged(value),
                            );
                          },
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                            errorBorder: const OutlineInputBorder(),
                            hintText: "Password",
                          ),
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
                    const SizedBox(height: 10),
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
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                            errorBorder: const OutlineInputBorder(),
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
                    const SizedBox(height: 5),
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
                    const SizedBox(height: 80),
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
      ),
    );
  }
}
