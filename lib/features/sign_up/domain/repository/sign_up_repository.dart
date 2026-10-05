import 'package:dartz/dartz.dart';
import 'package:whisper/core/failures/failure.dart';
import 'package:whisper/features/sign_up/domain/model/sign_up_request_model.dart';
import 'package:whisper/features/sign_up/domain/model/sign_up_response_model.dart';

abstract class SignUpRepository {
  /// Creates an account from the supplied profile and credential details.
  Future<Either<Failure, SignUpResponseModel>> signUp(
    SignUpRequestModel request,
  );
}
