import 'package:firebase_auth/firebase_auth.dart';
import 'package:whisper/features/spash/data/remote_data_soruce/remote_data_source.dart';
import 'package:whisper/features/spash/domain/repository/splash_repository.dart';

class SplashRepositoryImpl extends SplashRepository {
  final SplashRemoteDataSource _splashRemoteDataSource;
  SplashRepositoryImpl({required this._splashRemoteDataSource});

  /// Gets the current authentication status from the remote data source.
  @override
  Future<User?> checkUserStatus() {
    return _splashRemoteDataSource.isLoggedIn();
  }
}
