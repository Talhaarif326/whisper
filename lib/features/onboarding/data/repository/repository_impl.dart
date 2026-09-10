import 'package:whisper/barrel.dart';
import 'package:whisper/features/onboarding/presentation/constant/onboarding_constant.dart';

class RepositoryImpl extends Repository {
  @override
  List<OnboardingModel> getOnBoardingScreenData() {
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
