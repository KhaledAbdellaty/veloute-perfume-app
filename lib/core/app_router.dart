import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:veloute_app/presentation/views/splash_screen/splash_screen.dart';

import '../presentation/business_logic/auth_cubit/auth_cubit.dart';
import '../presentation/business_logic/bottom_nav_cubit/bottom_nav_bar_cubit.dart';
import '../presentation/business_logic/onboarding_cubit/onboarding_cubit.dart';
import '../presentation/business_logic/splash_cubit/splash_cubit.dart';
import '../presentation/views/authentication/create_new_password.dart';
import '../presentation/views/authentication/forget_passwors_screen.dart';
import '../presentation/views/authentication/otp_verification.dart';
import '../presentation/views/authentication/sign_in_screen.dart';
import '../presentation/views/authentication/sign_up_screen.dart';
import '../presentation/views/home/home_layout.dart';
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
      case RouteManager.signInScreen:
        return MaterialPageRoute(
          builder: (context) => BlocProvider(
            create: (context) => AuthCubit(),
            child: const SignInScreen(),
          ),
        );
      case RouteManager.signUpScreen:
        return MaterialPageRoute(
          builder: (context) => BlocProvider(
            create: (context) => AuthCubit(),
            child: const SignUpScreen(),
          ),
        );
      case RouteManager.forgetPasswordScreen:
        return MaterialPageRoute(
          builder: (context) => BlocProvider(
            create: (context) => AuthCubit(),
            child: const ForgetPasswordScreen(),
          ),
        );
      case RouteManager.otpVerificationScreen:
        return MaterialPageRoute(
          builder: (context) => BlocProvider(
            create: (context) => AuthCubit(),
            child: OtpVerificationScreen(),
          ),
        );
      case RouteManager.createNewPasswordScreen:
        return MaterialPageRoute(
          builder: (context) => BlocProvider(
            create: (context) => AuthCubit(),
            child: const CreateNewPasswordScreen(),
          ),
        );

      case RouteManager.homeScreen:
        return MaterialPageRoute(
          builder: (context) => MultiBlocProvider(
            providers: [
              // BlocProvider<HomeLayoutCubit>(
              //   create: (context) => homeCubit..fetchData(),
              // ),
              BlocProvider(
                create: (context) => BottomNavBarCubit(),
              ),
            ],
            child: const HomeLayout(),
          ),
        );
    }
  }
}
