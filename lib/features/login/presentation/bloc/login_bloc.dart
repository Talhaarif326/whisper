import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:whisper/features/login/data/repository_impl.dart';

part 'login_event.dart';
part 'login_state.dart';
part 'login_bloc.freezed.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  final RepositoryImpl loginRepository;
  LoginBloc({required this.loginRepository}) : super(LoginState()) {
    on<LoginEvent>((event, emit) async {
      await event.map(
        started: (e) {
          // Handle the started event
        },
        onEmailChanged: (event) {
          emit(state.copyWith(email: event.email));
        },
        onPasswordChanged: (event) {
          emit(state.copyWith(password: event.password));
        },
        onLoginPressed: (event) async {
          // Handle the login pressed event
          final email = state.email;
          final password = state.password;

          // Call the login repository to perform the login operation
          final result = await loginRepository.login(email, password);

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
