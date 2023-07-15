import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:veloute_app/core/extenstions.dart';
import 'package:veloute_app/presentation/views/onboarding/widgets/dots_indicator.dart';
import 'package:veloute_app/presentation/views/onboarding/widgets/onboarding_page_builder.dart';

import '../../../core/manager/string_manager.dart';
import '../../../core/widgets/custom_button.dart';
import '../../business_logic/onboarding_cubit/onboarding_cubit.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  OnboardingCubit onboardingCubit = OnboardingCubit();
  @override
  void dispose() {
    onboardingCubit.pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final cubit = OnboardingCubit.of(context);
    return Scaffold(
      body: SafeArea(
        child: BlocBuilder<OnboardingCubit, OnboardingState>(
          builder: (context, state) {
            return Stack(
              children: [
                OnBoardingPageBuilder(cubit: cubit),
                Positioned(
                  bottom: 0,
                  left: 0,
                  right: 0,
                  child: Column(
                    children: [
                      DotsIndicator(cubit: cubit),
                      31.h.emptyHeight,
                      CustomButton(
                        onPressed: cubit.currentIndex == 2
                            ? () => cubit.navigate(context)
                            : () => cubit.changeIndex(cubit.currentIndex++),
                        switcherCondition: cubit.currentIndex < 2,
                        firstChild: const Text(StringsManager.next),
                        secondChild: const Text(StringsManager.getStarted),
                      ),
                    ],
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
