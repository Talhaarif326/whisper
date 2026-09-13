import 'package:flutter/material.dart';
import 'package:whisper/barrel.dart';
import 'package:whisper/core/widgets/widget.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                  style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 100),
                TextFormField(
                  keyboardType: TextInputType.name,
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
                ),
                const SizedBox(height: 10),
                TextFormField(
                  keyboardType: TextInputType.emailAddress,
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
                ),
                const SizedBox(height: 10),
                TextFormField(
                  obscureText: true,
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
                ),
                const SizedBox(height: 10),
                TextFormField(
                  obscureText: true,
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
                    return null;
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
                ContinueButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      // Sign up logic will be implemented here
                    }
                  },
                  name: "Sign Up",
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
