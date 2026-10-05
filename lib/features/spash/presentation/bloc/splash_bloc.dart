import 'package:whisper/core/presentation/presentation_barrel.dart';
import 'package:whisper/features/spash/domain/splash_domain_barrel.dart';

part 'splash_event.dart';
part 'splash_state.dart';

class SplashBloc extends Bloc<SplashEvent, SplashState> {
  final SplashRepository repository;

  /// Resolves the current session and exposes its login status in state.
  SplashBloc({required this.repository}) : super(SplashState()) {
    on<IsLoggedIn>(_isLoggedIn);
  }

  /// Emits whether the repository found an authenticated user.
  Future<void> _isLoggedIn(IsLoggedIn event, Emitter<SplashState> emit) async {
    final user = await repository.checkUserStatus();
    if (user != null) {
      emit(state.copyWith(isLoggedIn: true));
    } else {
      emit(state.copyWith(isLoggedIn: false));
    }
  }
}
