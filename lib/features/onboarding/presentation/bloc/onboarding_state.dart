part of 'onboarding_bloc.dart';

class OnboardingState extends Equatable {
  final List<OnboardingModel> slider;
  final int index;
  const OnboardingState({this.slider = const [], this.index = 0});

  @override
  List<Object> get props => [slider, index];

  OnboardingState copyWith({List<OnboardingModel>? slider, int? index}) {
    return OnboardingState(
      slider: slider ?? this.slider,
      index: index ?? this.index,
    );
  }
}
