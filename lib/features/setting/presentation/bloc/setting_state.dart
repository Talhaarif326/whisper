part of 'setting_bloc.dart';

@freezed
class SettingState with _$SettingState {
  const factory SettingState({@Default(false) bool isLoggingOut}) =
      _SettingState;
}
