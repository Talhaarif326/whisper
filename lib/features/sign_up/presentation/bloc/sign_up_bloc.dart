import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:whisper/features/sign_up/data/repository/sign_up_repository_impl.dart';
import 'package:whisper/features/sign_up/domain/model/sign_up_request_model.dart';
import 'package:whisper/features/sign_up/domain/model/sign_up_response_model.dart';

part 'sign_up_event.dart';
part 'sign_up_state.dart';
part 'sign_up_bloc.freezed.dart';

class SignUpBloc extends Bloc<SignUpEvent, SignUpState> {
  final SignUpRepositoryImpl repository;
  SignUpBloc({required this.repository}) : super(const SignUpState()) {
    on<SignUpEvent>((event, emit) async {
      await event.map(
        started: (e) {
          // Handle initial state if needed
        },
        onNameChanged: (e) {
          emit(state.copyWith(name: e.name));
        },
        onEmailChanged: (e) {
          emit(state.copyWith(email: e.email));
        },
        onPasswordChanged: (e) {
          emit(state.copyWith(password: e.password));
        },
        onConfirmPasswordChanged: (e) {
          emit(state.copyWith(confirmPassword: e.confirmPassword));
        },
        onSignUp: (event) async {
          final result = await repository.signUp(event.request);
          print(result);

          result.fold(
            (failure) {
              emit(state.copyWith(error: failure.message));
            },
            (response) {
              emit(state.copyWith(signUpResponse: response, uid: response.uid));
            },
          );
        },
      );
    });
  }
}
