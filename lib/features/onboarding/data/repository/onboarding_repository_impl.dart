import 'package:whisper/features/onboarding/domain/model/onbarding_model.dart';
import 'package:whisper/features/onboarding/domain/repository/onboarding_repository.dart';
import 'package:whisper/features/onboarding/presentation/constant/onboarding_constant.dart';

class OnboardingRepositoryImpl implements OnboardingRepository {
  /// Provides the configured pages displayed during onboarding.
  @override
  List<OnboardingModel> getOnboardingScreenData() {
    return [
      OnboardingModel(
        image: OnboardingImages.onboardinglogo1,
        heading: OnboardingText.onboardingHeadingText1,
        subText: OnboardingText.onboardingSubText1,
      ),
      OnboardingModel(
        image: OnboardingImages.onboardinglogo2,
        heading: OnboardingText.onboardingHeadingText2,
        subText: OnboardingText.onboardingSubText2,
      ),
      OnboardingModel(
        image: OnboardingImages.onboardinglogo3,
        heading: OnboardingText.onboardingHeadingText3,
        subText: OnboardingText.onboardingSubText3,
      ),
    ];
  }
}
