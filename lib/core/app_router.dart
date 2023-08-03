import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:veloute_app/presentation/views/splash_screen/splash_screen.dart';

import '../presentation/business_logic/onboarding_cubit/onboarding_cubit.dart';
import '../presentation/business_logic/splash_cubit/splash_cubit.dart';
import '../presentation/views/onboarding/onboarding_screen.dart';
import 'manager/route_manager.dart';

class AppRouter {
  AppRouter._();
  static Route? onGenerate(RouteSettings settings) {
    switch (settings.name) {
      case RouteManager.splashScreen:
        return MaterialPageRoute(
          builder: (context) => BlocProvider(
            create: (context) => SplashCubit()..moveSplashAway(context),
            child: const SplashScreen(),
          ),
        );
      case RouteManager.onBoardingScreen:
        return MaterialPageRoute(
          builder: (context) => BlocProvider(
            create: (context) => OnboardingCubit(),
            child: const OnBoardingScreen(),
          ),
        );
    }
    return null;
  }
}
