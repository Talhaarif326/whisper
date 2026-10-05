import 'package:dartz/dartz.dart';
import 'package:whisper/core/failures/failure.dart';
import 'package:whisper/features/login/domain/model/login_model.dart';

abstract class LoginRepository {
  /// Authenticates with the supplied credentials or returns a failure.
  Future<Either<Failure, LoginModel>> login(String email, String password);
}
