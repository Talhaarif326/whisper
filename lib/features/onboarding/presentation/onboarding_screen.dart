import 'package:flutter/material.dart';
import 'package:whisper/barrel.dart';
import 'package:whisper/core/widgets/widget.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final PageController _pageController = PageController();
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          OnboardingBloc(RepositoryImpl())..add(GetOnboardingData()),
      child: Scaffold(
        body: SafeArea(
          child: BlocBuilder<OnboardingBloc, OnboardingState>(
            builder: (context, state) {
              return Column(
                children: [
                  Expanded(
                    child: BlocListener<OnboardingBloc, OnboardingState>(
                      listenWhen: (previous, current) => previous != current,
                      listener: (context, state) {
                        _pageController.animateToPage(
                          state.index,
                          duration: Duration(microseconds: 300),
                          curve: Curves.easeInOut,
                        );
                      },
                      child: PageView.builder(
                        itemCount: state.slider.length,
                        onPageChanged: (value) {
                          context.read<OnboardingBloc>().add(
                            OnPageChangeEvent(index: value),
                          );
                        },
                        controller: _pageController,

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
                  ),
                  Padding(
                    padding: EdgeInsets.all(AppPadding.padding14),
                    child: Container(
                      width: double.infinity,
                      alignment: Alignment.center,
                      height: AppSize.sizeDouble80,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(
                          AppSize.sizeDouble25,
                        ),
                        color: ColorManager.primaryColor,
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(AppPadding.padding12),
                        child: state.index < state.slider.length - 1
                            ? Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  GestureDetector(
                                    onTap: () {
                                      context.read<OnboardingBloc>().add(
                                        GoToPreviousPage(),
                                      );
                                    },
                                    child: state.index == 0
                                        ? SizedBox.shrink()
                                        : Image.asset(
                                            OnboardingImages.letArrow,
                                          ),
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      for (
                                        int i = 0;
                                        i < state.slider.length;
                                        i++
                                      )
                                        if (i == state.index)
                                          Image.asset(
                                            OnboardingImages.rightArrow,
                                          )
                                        else
                                          Image.asset(
                                            OnboardingImages.letArrow,
                                          ),
                                    ],
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      print(state.index);
                                      context.read<OnboardingBloc>().add(
                                        GoToNextPage(),
                                      );
                                    },
                                    child: state.index < state.slider.length - 1
                                        ? Image.asset(
                                            OnboardingImages.rightArrow,
                                          )
                                        : SizedBox.shrink(),
                                  ),
                                ],
                              )
                            : ContinueButton(
                                onPressed: () => Navigator.pushReplacementNamed(
                                  context,
                                  RoutesManager.loginScreen,
                                ),
                                name: "Continue",
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
