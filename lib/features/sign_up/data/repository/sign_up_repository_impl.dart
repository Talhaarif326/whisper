import 'dart:async';
import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:whisper/core/failures/failure.dart';
import 'package:whisper/features/sign_up/domain/model/sign_up_request_model.dart';
import 'package:whisper/features/sign_up/domain/model/sign_up_response_model.dart';
import 'package:whisper/features/sign_up/domain/repository/sign_up_repository.dart';

class SignUpRepositoryImpl extends SignUpRepository {
  @override
  Future<Either<Failure, SignUpResponseModel>> signUp(
    SignUpRequestModel request,
  ) async {
    try {
      final credentials = await FirebaseAuth.instance
          .createUserWithEmailAndPassword(
            email: request.email,
            password: request.password,
          );
      return Right(
        SignUpResponseModel.fromJson({
          "email": credentials.user!.email,
          "uid": credentials.user!.uid,
          "message": "User created successfully",
        }),
      );
    } on FirebaseAuthException catch (e) {
      print("Error is ${e.message}");
      return Left(Failure("Failed to sign up ${e.message}"));
    } catch (e) {
      print("Unexpected error: ${e.toString()}");
      return Left(Failure("Failed to sign up , Error: ${e.toString()}"));
    }
  }
}
