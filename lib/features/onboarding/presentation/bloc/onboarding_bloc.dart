import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:whisper/features/onboarding/data/repository/repository_impl.dart';
import 'package:whisper/features/onboarding/domain/model/onbarding_model.dart';

part 'onboarding_event.dart';
part 'onboarding_state.dart';

class OnboardingBloc extends Bloc<OnboardingEvent, OnboardingState> {
  final RepositoryImpl repositoryImpl;
  OnboardingBloc(this.repositoryImpl) : super(OnboardingState()) {
    on<GetOnboardingData>(_sliderEvent);
    on<OnPageChangeEvent>(_onPageChangeEvent);
    on<GoToNextPage>(_goToNextPage);
    on<GoToPreviousPage>(_goToPreviousPage);
  }

  void _sliderEvent(GetOnboardingData event, Emitter<OnboardingState> emit) {
    emit(state.copyWith(slider: repositoryImpl.getOnBoardingScreenData()));
  }

  void _onPageChangeEvent(
    OnPageChangeEvent event,
    Emitter<OnboardingState> emit,
  ) {
    emit(state.copyWith(index: event.index));
  }

  void _goToNextPage(GoToNextPage event, Emitter<OnboardingState> emit) {
    if (state.index < state.slider.length) {
      emit(state.copyWith(index: state.index + 1));
    }
  }

  void _goToPreviousPage(
    GoToPreviousPage event,
    Emitter<OnboardingState> emit,
  ) {
    if (state.index < state.slider.length) {
      emit(state.copyWith(index: state.index - 1));
    }
  }
}
