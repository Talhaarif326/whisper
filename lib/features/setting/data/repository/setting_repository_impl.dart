import 'package:whisper/features/setting/data/remote_data_source/setting_remote_data_source.dart';
import 'package:whisper/features/setting/domain/repository/setting_repositoy.dart';

class SettingRepositoryImpl extends SettingRepository {
  final SettingRemoteDataSource _remoteDataSource;

  SettingRepositoryImpl(this._remoteDataSource);

  @override
  Future<void> logOut() async {
    await _remoteDataSource.signOut();
  }

  @override
  Future<void> notificationsEnabledOrDisabled(bool enabled) async {
    await _remoteDataSource.notificationsEnabledOrDisabled(enabled);
  }
}
