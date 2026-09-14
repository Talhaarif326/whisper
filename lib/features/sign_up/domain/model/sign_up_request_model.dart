class SignUpRequestModel {
  const SignUpRequestModel({
    required this.name,
    required this.email,
    required this.password,
    required this.confirmPasswrod,
  });

  final String name;
  final String email;
  final String password;
  final String confirmPasswrod;
}
