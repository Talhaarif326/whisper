import 'package:dartz/dartz.dart';
import 'package:whisper/core/failures/failure.dart';
import 'package:whisper/features/sign_up/data/remote_data_source/signup_remote_data_source.dart';
import 'package:whisper/features/sign_up/domain/model/sign_up_request_model.dart';
import 'package:whisper/features/sign_up/domain/model/sign_up_response_model.dart';
import 'package:whisper/features/sign_up/domain/repository/sign_up_repository.dart';

class SignUpRepositoryImpl extends SignUpRepository {
  /// Delegates account creation to the Firebase remote data source.
  @override
  Future<Either<Failure, SignUpResponseModel>> signUp(
    SignUpRequestModel request,
  ) {
    return SignupRemoteDataSource().signUp(request);
  }
}
