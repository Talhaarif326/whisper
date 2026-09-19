part of 'splash_bloc.dart';

class SplashState extends Equatable {
  final bool? isLoggedIn;
  const SplashState({this.isLoggedIn});

  SplashState copyWith({bool? isLoggedIn}) {
    return SplashState(isLoggedIn: isLoggedIn ?? this.isLoggedIn);
  }

  @override
  List<Object?> get props => [isLoggedIn];
}
