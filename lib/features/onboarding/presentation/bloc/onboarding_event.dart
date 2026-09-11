part of 'onboarding_bloc.dart';

abstract class OnboardingEvent extends Equatable {
  const OnboardingEvent();

  @override
  List<Object> get props => [];
}

class GetOnboardingData extends OnboardingEvent {
  const GetOnboardingData();
}

class OnPageChangeEvent extends OnboardingEvent {
  final int index;
  const OnPageChangeEvent({required this.index});

  @override
  List<Object> get props => [index];
}

class GoToNextPage extends OnboardingEvent {}

class GoToPreviousPage extends OnboardingEvent {}
