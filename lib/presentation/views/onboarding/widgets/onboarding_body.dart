import 'package:flutter/material.dart';

import '../../../business_logic/onboarding_cubit/onboarding_cubit.dart';
import 'onboarding_content.dart';
import 'onboarding_image.dart';

class OnboardingBody extends StatelessWidget {
  const OnboardingBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final cubit = OnboardingCubit.of(context);
    final image = cubit.onboardingContent.keys.elementAt(cubit.currentIndex);
    final headline = cubit.onboardingContent.values
        .elementAt(cubit.currentIndex)
        .entries
        .singleWhere((element) => element.key == 'headline')
        .value;
    
    final subTitle = cubit.onboardingContent.values
        .elementAt(cubit.currentIndex)
        .entries
        .singleWhere((element) => element.key == 'subtitle')
        .value;
    return Stack(
      children: [
        OnboardingImage(image: image),
        // MiniButton(
        //     topPosition: 11.h,
        //     rightPosition: 24.w,
        //     visible: cubit.currentIndex != 2,
        //     onPressed: () => cubit.skipOnboarding(),
        //     text: StringsManager.skip),
        // MiniButton(
        //     topPosition: 11.h,
        //     leftPosition: 24.w,
        //     visible: cubit.currentIndex != 0,
        //     onPressed: () => cubit.backOnboarding(),
        //     text: StringsManager.back),
        OnboardingContent(headline: headline, subTitle: subTitle)
      ],
    );
  }
}
