import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:whisper/barrel.dart';
import 'package:whisper/core/failures/failure.dart';

class RepositoryImpl implements LoginRepository {
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
