import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:veloute_app/core/manager/theme_manager.dart';
import 'core/app_router.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      builder: (context, child) => MaterialApp(
        title: 'Veloute app',
        debugShowCheckedModeBanner: false,
        theme: ThemeManager.appTheme,
        onGenerateRoute: AppRouter.onGenerate,
      ),
    );
  }
}
