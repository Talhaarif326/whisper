import 'package:whisper/barrel.dart';

part 'splash_event.dart';
part 'splash_state.dart';

class SplashBloc extends Bloc<SplashEvent, SplashState> {
  SplashBloc() : super(SplashState()) {
    on<IsLoggedIn>(_isLoggedIn);
  }

  Future<void> _isLoggedIn(IsLoggedIn event, Emitter<SplashState> emit) async {
    await Future.delayed(Duration(seconds: 5));
    emit(SplashNavigater());
  }
}
