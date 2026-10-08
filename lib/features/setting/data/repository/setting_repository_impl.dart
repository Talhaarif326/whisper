import 'package:whisper/features/setting/data/remote_data_source/setting_remote_data_source.dart';
import 'package:whisper/features/setting/domain/repository/setting_repository.dart';

class SettingRepositoryImpl extends SettingRepository {
  final SettingRemoteDataSource _remoteDataSource;

  SettingRepositoryImpl(this._remoteDataSource);

  /// Signs the current user out through the remote data source.
  @override
  Future<void> logOut() async {
    await _remoteDataSource.signOut();
  }

  /// Reads the persisted notification preference from the remote data source.
  @override
  Future<bool> notificationsEnabled() async {
    return _remoteDataSource.notificationsEnabled();
  }

  /// Forwards the notification preference to the remote data source.
  @override
  Future<bool> notificationsEnabledOrDisabled(bool enabled) async {
    return _remoteDataSource.notificationsEnabledOrDisabled(enabled);
  }
}
