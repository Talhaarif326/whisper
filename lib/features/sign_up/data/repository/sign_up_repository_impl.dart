import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:whisper/features/sign_up/domain/model/sign_up_request_model.dart';
import 'package:whisper/features/sign_up/domain/model/sign_up_response_model.dart';
import 'package:whisper/features/sign_up/domain/repository/sign_up_repository.dart';

import 'package:http/http.dart' as http;

class SignUpRepositoryImpl extends SignUpRepository {
  @override
  Future<SignUpResponseModel> signUp(SignUpRequestModel request) async {
    try {
      final Uri baseUrl = Uri.parse(
        "https://3d5cfa3c-2e04-4ae9-978c-bb2dfdbe7711.mock.pstmn.io/register",
      );
      final response = await http.post(
        baseUrl,
        body: jsonEncode({
          "name": request.name,
          "password": request.password,
          "confirmPassword": request.confirmPasswrod,
          "email": request.email,
        }),
        headers: {
          "Content-Type": "application/json",
          "Accept": "application/json",
          "x-mock-match-request-body": "true",
        },
      );
      if (response.statusCode == 201) {
        final data = jsonDecode(response.body);
        return SignUpResponseModel.fromJson(data);
      }
      if (response.statusCode == 404) {
        return SignUpResponseModel.fromJson({
          "statusCode": "404",
          "message": "User not found",
        });
      } else {
        throw Exception("Failed to sign up");
      }
    } on TimeoutException {
      throw "Request time out ";
    } on SocketException {
      throw "No internet connection";
    } catch (e) {
      throw Exception("Error: ${e.toString()}");
    }
  }
}
