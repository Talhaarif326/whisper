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
          await loginRepository
              .login(email, password)
              .then((result) {
                emit(
                  state.copyWith(
                    errorMessage: result.message,
                    statusCode: result.statusCode,
                  ),
                );
              })
              .catchError((error) {
                emit(
                  state.copyWith(errorMessage: error.toString(), statusCode: 0),
                );
              });
        },
      );
    });
  }
}
