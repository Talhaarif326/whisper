part of 'setting_bloc.dart';

@freezed
class SettingState with _$SettingState {
  const factory SettingState({
    @Default(false) bool isLoggingOut,
    @Default(true) bool notificationsEnabled,
  }) = _SettingState;
}
