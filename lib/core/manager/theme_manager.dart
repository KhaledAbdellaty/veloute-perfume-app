import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'colors_manager.dart';
import 'fonts_manager.dart';

class ThemeManager {
  static final ThemeData appTheme = ThemeData(
      primarySwatch: ColorsManager.primarySwatch,
      fontFamily: GoogleFonts.robotoSlab().fontFamily,
      scaffoldBackgroundColor: ColorsManager.background,
      primaryColor: ColorsManager.primary,
      colorScheme: ColorScheme.dark(
        primary: ColorsManager.primary,
        onPrimary: ColorsManager.secondry,
        background: ColorsManager.background,
      ),
      // appbar theme
      appBarTheme: const AppBarTheme(
        color: Colors.transparent,
        elevation: 0,
        centerTitle: true,
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ButtonStyle(
          textStyle: MaterialStatePropertyAll(TextStyle(
              color: ColorsManager.white,
              fontWeight: FontWeight.w600,
              fontSize: FontsManager.s16.sp)),
          backgroundColor: MaterialStatePropertyAll(ColorsManager.primary),
          shape: MaterialStatePropertyAll(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
          ),
        ),
      ),
      //  cardTheme: CardTheme(color: ColorManager.grey),
      // cardColor: ColorManager.grey,
      textButtonTheme: TextButtonThemeData(
        style: ButtonStyle(
          textStyle: MaterialStatePropertyAll(
            TextStyle(
                color: ColorsManager.white,
                fontSize: FontsManager.s16.sp,
                fontWeight: FontWeight.w400),
          ),
        ),
      ),
      textTheme: TextTheme(
        // headline
        headlineLarge: TextStyle(
            fontSize: FontsManager.s23.sp,
            color: ColorsManager.white,
            fontWeight: FontWeight.w500),
        headlineMedium: TextStyle(
            fontSize: FontsManager.s30.sp,
            color: ColorsManager.primary,
            fontWeight: FontWeight.w500),
        headlineSmall: TextStyle(
            fontSize: FontsManager.s16.sp,
            color: ColorsManager.white,
            fontWeight: FontWeight.w400),

        // title
        titleLarge: TextStyle(
            fontSize: FontsManager.s24.sp,
            color: ColorsManager.primary,
            fontWeight: FontWeight.w500),

        // subTitle
        titleMedium: TextStyle(
            fontSize: FontsManager.s16.sp,
            color: ColorsManager.primary,
            fontWeight: FontWeight.w500),
      ),
      dividerColor: ColorsManager.white);
}
