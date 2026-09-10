import 'package:flutter/material.dart';
import 'package:whisper/barrel.dart';
import 'package:whisper/core/constants/app_size.dart';
import 'package:whisper/features/onboarding/data/repository/repository_impl.dart';
import 'package:whisper/features/onboarding/presentation/bloc/onboarding_bloc.dart';
import 'package:whisper/features/onboarding/presentation/constant/onboarding_constant.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  @override
  Widget build(BuildContext context) {
    print('test2');
    return Scaffold(
      body: BlocProvider(
        create: (context) =>
            OnboardingBloc(RepositoryImpl())..add(GetOnboardingData()),
        child: SafeArea(
          child: BlocBuilder<OnboardingBloc, OnboardingState>(
            builder: (context, state) {
              return Column(
                children: [
                  Expanded(
                    child: PageView.builder(
                      itemCount: state.slider.length,
                      onPageChanged: (value) {
                        context.read<OnboardingBloc>().add(
                          OnPageChangeEvent(index: value),
                        );
                      },

                      itemBuilder: (context, index) => Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Image.asset(
                            state.slider[index].image,
                            height: AppSize.sizeDouble200,
                          ),
                          SizedBox(height: AppSize.sizeDouble40),
                          Text(
                            state.slider[index].heading,
                            style: TextStyle(
                              fontSize: AppSize.sizeDouble20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: AppSize.sizeDouble12),
                          Text(state.slider[index].subText),
                          SizedBox(height: AppSize.sizeDouble200),
                        ],
                      ),
                    ),
                  ),
                  Padding(
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
                            GestureDetector(
                              child: Image.asset(OnboardingImages.letArrow),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                for (int i = 0; i < state.slider.length; i++)
                                  if (i == state.index)
                                    Image.asset(OnboardingImages.whiteCircle)
                                  else
                                    Image.asset(OnboardingImages.blackCircle),
                              ],
                            ),
                            GestureDetector(
                              child: Image.asset(OnboardingImages.rightArrow),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
