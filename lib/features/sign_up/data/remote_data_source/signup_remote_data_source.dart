import 'dart:async';
import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:whisper/core/failures/failure.dart';
import 'package:whisper/features/sign_up/domain/model/sign_up_request_model.dart';
import 'package:whisper/features/sign_up/domain/model/sign_up_response_model.dart';

class SignupRemoteDataSource {
  Future<Either<Failure, SignUpResponseModel>> signUp(
    SignUpRequestModel request,
  ) async {
    try {
      final credentials = await FirebaseAuth.instance
          .createUserWithEmailAndPassword(
            email: request.email,
            password: request.password,
          );
      await credentials.user!.updateDisplayName(request.name);

      final DatabaseReference ref = FirebaseDatabase.instance
          .ref()
          .child("users")
          .child(credentials.user!.uid);

      await ref.set({
        "email": request.email,
        "name": request.name,
        "uid": credentials.user!.uid,
      });

      return Right(
        SignUpResponseModel.fromJson({
          "email": credentials.user!.email,
          "uid": credentials.user!.uid,
          "message": "User created successfully",
        }),
      );
    } on FirebaseAuthException catch (e) {
      return Left(Failure("Failed to sign up ${e.message}"));
    } catch (e) {
      return Left(Failure("Failed to sign up , Error: ${e.toString()}"));
    }
  }
}
