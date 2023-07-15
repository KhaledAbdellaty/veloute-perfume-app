import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:veloute_app/core/manager/route_manager.dart';

part 'splash_state.dart';

class SplashCubit extends Cubit<SplashState> {
  SplashCubit() : super(SplashInitial());

  moveSplashAway(BuildContext context) {
    Future.delayed(
      const Duration(seconds: 2),
      () => Navigator.pushNamed(context, RouteManager.onBoardingScreen),
    );
  }
}
