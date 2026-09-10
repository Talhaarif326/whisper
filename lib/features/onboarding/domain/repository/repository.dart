import 'package:whisper/features/onboarding/domain/model/onbarding_model.dart';

abstract class Repository {
  List<OnboardingModel> getOnBoardingScreenData();
}
