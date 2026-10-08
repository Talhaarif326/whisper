import 'package:flutter_test/flutter_test.dart';
import 'package:whisper/features/setting/domain/repository/setting_repository.dart';
import 'package:whisper/features/setting/presentation/bloc/setting_bloc.dart';

void main() {
  test(
    'loads the saved notification preference and persists changes',
    () async {
      final repository = _FakeSettingRepository(true);
      final bloc = SettingBloc(repository);
      addTearDown(bloc.close);

      final loaded = bloc.stream.firstWhere(
        (state) => !state.isLoadingNotifications,
      );
      bloc.add(const SettingEvent.started());

      expect((await loaded).notificationsEnabled, isTrue);

      final updated = bloc.stream.firstWhere(
        (state) => !state.isLoadingNotifications,
      );
      bloc.add(const SettingEvent.enableOrDisableNotifications(enabled: false));

      expect((await updated).notificationsEnabled, isFalse);
      expect(repository.lastRequestedPreference, isFalse);
    },
  );
}

class _FakeSettingRepository implements SettingRepository {
  _FakeSettingRepository(this._notificationsEnabled);

  bool _notificationsEnabled;
  bool? lastRequestedPreference;

  @override
  Future<void> logOut() async {}

  @override
  Future<bool> notificationsEnabled() async => _notificationsEnabled;

  @override
  Future<bool> notificationsEnabledOrDisabled(bool enabled) async {
    lastRequestedPreference = enabled;
    _notificationsEnabled = enabled;
    return enabled;
  }
}
