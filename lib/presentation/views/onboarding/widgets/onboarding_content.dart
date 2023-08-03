import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:veloute_app/core/extenstions.dart';


class OnboardingContent extends StatelessWidget {
  final String headline, subTitle;
  const OnboardingContent({
    super.key,
    required this.headline,
    required this.subTitle,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 127.h,
      left: 0,
      right: 0,
      child: TweenAnimationBuilder(
        tween: Tween<double>(begin: 0, end: 1),
        duration: const Duration(milliseconds: 200),
        builder: (context, value, child) => AnimatedScale(
          scale: value,
          duration: const Duration(milliseconds: 200),
          child: child,
        ),
        child: Padding(
          padding: 21.w.psh,
          child: Column(
            children: [
              Text(
                headline,
                style: Theme.of(context).textTheme.headlineLarge,
                textAlign: TextAlign.center,
              ),
        
              16.h.emptyHeight,
              Text(
                subTitle,
                style: Theme.of(context).textTheme.headlineSmall,
                textAlign: TextAlign.center,
              ),
              36.h.emptyHeight,
            ],
          ),
        ),
      ),
    );
  }
}
