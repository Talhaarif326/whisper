part of 'setting_bloc.dart';

@freezed
class SettingState with _$SettingState {
  const factory SettingState({
    @Default(false) bool isLoggingOut,
    @Default(false) bool notificationsEnabled,
    @Default(true) bool isLoadingNotifications,
    @Default('') String notificationError,
  }) = _SettingState;
}
