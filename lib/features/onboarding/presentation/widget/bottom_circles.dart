import 'package:flutter/material.dart';
import 'package:whisper/barrel.dart';

import 'package:whisper/core/constants/app_size.dart';
import 'package:whisper/features/onboarding/presentation/constant/onboarding_constant.dart';

class BottomCircles extends StatelessWidget {
  const BottomCircles({
    super.key,
    required this.index,
    required this.currentPageIndex,
  });
  final int index;
  final int currentPageIndex;

  Widget getBottomCicles(int index, int currentPageIndex) {
    if (index == currentPageIndex) {
      return Image.asset(OnboardingImages.letArrow);
    }
    return Image.asset(OnboardingImages.letArrow);
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(AppPadding.padding14),
      child: Container(
        height: AppSize.sizeDouble80,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
          color: ColorManager.primaryColor,
        ),
        child: Padding(
          padding: EdgeInsets.all(AppPadding.padding12),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GestureDetector(child: Image.asset(OnboardingImages.letArrow)),
              Expanded(
                child: Row(
                  children: [getBottomCicles(index, currentPageIndex)],
                ),
              ),
              GestureDetector(child: Image.asset(OnboardingImages.rightArrow)),
            ],
          ),
        ),
      ),
    );
  }
}
