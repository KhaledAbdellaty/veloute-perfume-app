import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:veloute_app/core/extenstions.dart';
import 'package:veloute_app/presentation/views/home/widgets/bottom_bar_label.dart';

import '../../../core/manager/colors_manager.dart';
import '../../business_logic/bottom_nav_cubit/bottom_nav_bar_cubit.dart';

class HomeLayout extends StatelessWidget {
  const HomeLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BottomNavBarCubit, BottomNavBarState>(
      builder: (context, state) {
        return Scaffold(
          bottomNavigationBar: BottomAppBar(
            height: 70.h,
            color: Colors.transparent,
            child: Container(
              height: 70.h,
              width: double.infinity,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  gradient: LinearGradient(colors: [
                    ColorsManager.background,
                    ColorsManager.primary,
                  ], stops: [
                    0.5,
                    1,
                  ], begin: Alignment.bottomCenter, end: Alignment.topCenter)),
              child: Padding(
                padding: 24.w.psh,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    BottomBarLabel(
                      name: 'Home',
                      icon: Icons.home_outlined,
                      isTap: state.index == 0,
                      onTapped: () =>
                          BottomNavBarCubit.of(context).navigateToScreen(0),
                    ),
                    BottomBarLabel(
                      name: 'Categories',
                      icon: Icons.grid_view_rounded,
                      isTap: state.index == 1,
                      onTapped: () =>
                          BottomNavBarCubit.of(context).navigateToScreen(1),
                    ),
                    BottomBarLabel(
                      name: 'Cart',
                      icon: Icons.shopping_cart_outlined,
                      isTap: state.index == 2,
                      onTapped: () =>
                          BottomNavBarCubit.of(context).navigateToScreen(2),
                    ),
                    BottomBarLabel(
                      name: 'Profile',
                      icon: FontAwesomeIcons.user,
                      isTap: state.index == 3,
                      onTapped: () =>
                          BottomNavBarCubit.of(context).navigateToScreen(3),
                    ),
                  ],
                ),
              ),
            ),
          ),
          body: state.screens[state.index],
        );
      },
    );
  }
}
