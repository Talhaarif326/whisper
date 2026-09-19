import 'package:whisper/barrel.dart';
import 'package:whisper/features/spash/data/repository/splash_repository_impl.dart';

part 'splash_event.dart';
part 'splash_state.dart';

class SplashBloc extends Bloc<SplashEvent, SplashState> {
  final SplashRepositoryImpl _splashRepository;
  SplashBloc({required this._splashRepository}) : super(SplashState()) {
    on<IsLoggedIn>(_isLoggedIn);
  }

  Future<void> _isLoggedIn(IsLoggedIn event, Emitter<SplashState> emit) async {
    final user = await _splashRepository.checkUserStatus();
    if (user != null) {
      print(user);
      emit(state.copyWith(isLoggedIn: true));
    } else {
      emit(state.copyWith(isLoggedIn: false));
    }
  }
}
