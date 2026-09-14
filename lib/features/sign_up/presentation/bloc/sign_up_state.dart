part of 'sign_up_bloc.dart';

@freezed
class SignUpState with _$SignUpState {
  const factory SignUpState({
    @Default("") String name,
    @Default("") String email,
    @Default("") String password,
    @Default("") String confirmPassword,
    @Default("") String error,
    @Default(SignUpResponseModel(statusCode: "0", message: 'Initial state'))
    @Default("")
    SignUpResponseModel signUpResponse,
  }) = _SignUpState;
}
