import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:whisper/barrel.dart';

class RepositoryImpl implements LoginRepository {
  @override
  Future<LoginModel> login(String email, String password) async {
    final String baseUrl =
        "https://3d5cfa3c-2e04-4ae9-978c-bb2dfdbe7711.mock.pstmn.io/Customers/Login";

    Uri url = Uri.parse(baseUrl);
    final response = await http.post(
      url,
      headers: {
        "Content-Type": "application/json",
        "Accept": "application/json",
        "x-mock-match-request-body": "true",
      },
      body: jsonEncode({"email": email, "password": password}),
    );

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);
      return LoginModel.fromJson(data);
    } else {
      // Handle login failure
      throw Exception('Login failed');
    }
  }
}
