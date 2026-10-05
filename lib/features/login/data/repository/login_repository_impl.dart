import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:whisper/core/failures/failure.dart';
import 'package:whisper/features/login/domain/model/login_model.dart';
import 'package:whisper/features/login/domain/repository/login_repository.dart';

class LoginRepositoryImpl implements LoginRepository {
  /// Authenticates with Firebase and converts errors into domain failures.
  @override
  Future<Either<Failure, LoginModel>> login(
    String email,
    String password,
  ) async {
    try {
      final credintals = await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      return Right(LoginModel(uid: credintals.user!.uid));
    } on FirebaseAuthException catch (e) {
      return Left(Failure(e.code));
    } catch (e) {
      return Left(Failure(e.toString()));
    }
  }
}
