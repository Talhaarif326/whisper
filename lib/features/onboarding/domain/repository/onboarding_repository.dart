import 'package:whisper/features/onboarding/domain/model/onbarding_model.dart';

abstract class OnboardingRepository {
  /// Returns the ordered content for the onboarding flow.
  List<OnboardingModel> getOnboardingScreenData();
}
