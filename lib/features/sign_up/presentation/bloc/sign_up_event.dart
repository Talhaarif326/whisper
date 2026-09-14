part of "sign_up_bloc.dart";

@freezed
class SignUpEvent with _$SignUpEvent {
  const factory SignUpEvent.started() = _Started;
  const factory SignUpEvent.onNameChanged(String name) = _OnNameChanged;
  const factory SignUpEvent.onEmailChanged(String email) = _OnEmailChanged;
  const factory SignUpEvent.onPasswordChanged(String password) =
      _OnPasswordChanged;
  const factory SignUpEvent.onConfirmPasswordChanged(String confirmPassword) =
      _OnConfirmPasswordChanged;
  const factory SignUpEvent.onSignUp(SignUpRequestModel request) = _OnSignUp;
}
