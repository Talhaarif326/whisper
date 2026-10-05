import 'package:whisper/core/presentation/presentation_barrel.dart';
import 'package:whisper/features/sign_up/domain/sign_up_domain_barrel.dart';

part 'sign_up_event.dart';
part 'sign_up_state.dart';
part 'sign_up_bloc.freezed.dart';

class SignUpBloc extends Bloc<SignUpEvent, SignUpState> {
  final SignUpRepository repository;

  /// Tracks sign-up form input and submits account creation requests.
  SignUpBloc({required this.repository}) : super(const SignUpState()) {
    on<SignUpEvent>((event, emit) async {
      await event.map(
        started: (e) {},
        // Update the corresponding field as the user edits the form.
        onNameChanged: (e) {
          emit(state.copyWith(name: e.name));
        },
        // Update the email field as the user edits the form.
        onEmailChanged: (e) {
          emit(state.copyWith(email: e.email));
        },
        // Update the password field as the user edits the form.
        onPasswordChanged: (e) {
          emit(state.copyWith(password: e.password));
        },
        // Update the confirmation field as the user edits the form.
        onConfirmPasswordChanged: (e) {
          emit(state.copyWith(confirmPassword: e.confirmPassword));
        },
        // Submit the request and store either its failure or successful result.
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
