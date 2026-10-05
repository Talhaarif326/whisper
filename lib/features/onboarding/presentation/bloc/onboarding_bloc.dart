import 'package:whisper/core/presentation/presentation_barrel.dart';
import 'package:whisper/features/onboarding/domain/onboarding_domain_barrel.dart';

part 'onboarding_event.dart';
part 'onboarding_state.dart';

class OnboardingBloc extends Bloc<OnboardingEvent, OnboardingState> {
  final OnboardingRepository repository;

  /// Loads onboarding content and tracks the page selected by the user.
  OnboardingBloc(this.repository) : super(OnboardingState()) {
    on<GetOnboardingData>(_sliderEvent);
    on<OnPageChangeEvent>(_onPageChangeEvent);
    on<GoToNextPage>(_goToNextPage);
    on<GoToPreviousPage>(_goToPreviousPage);
  }

  /// Fetches onboarding page content and stores it in state.
  void _sliderEvent(GetOnboardingData event, Emitter<OnboardingState> emit) {
    emit(state.copyWith(slider: repository.getOnboardingScreenData()));
  }

  /// Updates the current page index after a page-view change.
  void _onPageChangeEvent(
    OnPageChangeEvent event,
    Emitter<OnboardingState> emit,
  ) {
    emit(state.copyWith(index: event.index));
  }

  /// Advances to the next onboarding page while within the page bounds.
  void _goToNextPage(GoToNextPage event, Emitter<OnboardingState> emit) {
    if (state.index < state.slider.length) {
      emit(state.copyWith(index: state.index + 1));
    }
  }

  /// Moves the onboarding page index backward.
  void _goToPreviousPage(
    GoToPreviousPage event,
    Emitter<OnboardingState> emit,
  ) {
    if (state.index < state.slider.length) {
      emit(state.copyWith(index: state.index - 1));
    }
  }
}
