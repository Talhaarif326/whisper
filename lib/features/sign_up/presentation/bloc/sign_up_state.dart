part of 'sign_up_bloc.dart';

@freezed
class SignUpState with _$SignUpState {
  const factory SignUpState({
    @Default("") String name,
    @Default("") String email,
    @Default("") String password,
    @Default("") String confirmPassword,
    @Default("") String error,
    @Default('') String uid,
    @Default(SignUpResponseModel(email: "", message: 'Initial state', uid: ''))
    @Default("")
    SignUpResponseModel signUpResponse,
  }) = _SignUpState;
}
