import 'package:flutter/material.dart';

class OnboardingImage extends StatelessWidget {
  final String image;
  const OnboardingImage({super.key, required this.image});

  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder(
      tween: Tween<double>(begin: 0, end: 1),
      duration: const Duration(milliseconds: 200),
      builder: (context, value, child) => AnimatedScale(
        scale: value,
        duration: const Duration(milliseconds: 200),
        child: child,
      ),
      child: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Image.asset(
          image,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
