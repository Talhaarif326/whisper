import 'package:whisper/core/presentation/presentation_barrel.dart';
import 'package:whisper/features/login/domain/login_domain_barrel.dart';

part 'login_event.dart';
part 'login_state.dart';
part 'login_bloc.freezed.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  final LoginRepository repository;

  /// Tracks login form input and submits credentials through the repository.
  LoginBloc({required this.repository}) : super(LoginState()) {
    on<LoginEvent>((event, emit) async {
      await event.map(
        started: (e) {},
        // Store edited email and password values in form state.
        onEmailChanged: (event) {
          emit(state.copyWith(email: event.email));
        },
        // Store the edited password value in form state.
        onPasswordChanged: (event) {
          emit(state.copyWith(password: event.password));
        },
        // Authenticate the current form values and publish the result.
        onLoginPressed: (event) async {
          final email = state.email;
          final password = state.password;

          final result = await repository.login(email, password);

          result.fold(
            (failure) {
              emit(state.copyWith(errorMessage: failure.message));
            },
            (loginModel) {
              emit(state.copyWith(errorMessage: "Login successful"));
            },
          );
        },
      );
    });
  }
}
