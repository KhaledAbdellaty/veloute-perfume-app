import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:veloute_app/core/manager/colors_manager.dart';
import 'package:veloute_app/core/manager/images_manager.dart';
import 'package:veloute_app/presentation/business_logic/splash_cubit/splash_cubit.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: ColorsManager.primary,
      body: BlocBuilder<SplashCubit, SplashState>(
        builder: (context, state) {
          return Center(
            child: Image.asset(ImagesManager.imagesLogo),
          );
        },
      ),
    );
  }




}
