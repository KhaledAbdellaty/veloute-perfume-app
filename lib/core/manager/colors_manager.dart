import 'package:flutter/material.dart';

abstract class ColorsManager {
  static MaterialColor primarySwatch = const MaterialColor(0xff8B499F, <int,Color>{
      50: Color(0xFFE3F2FD),
      100: Color(0xFFBBDEFB),
      200: Color(0xFF90CAF9),
      300: Color(0xFF64B5F6),
      400: Color(0xFF42A5F5),
      500: Color(0xff8B499F),
      600: Color(0xFF1E88E5),
      700: Color(0xFF1976D2),
      800: Color(0xFF1565C0),
      900: Color(0xFF0D47A1),
  });
  static Color primary = const Color(0xff8B499F);
  static Color secondry = const Color(0xffE5D8EA);
  static Color white = const Color(0xffffffff);
  static Color background = const Color(0xff110317);
  static Color grey = const Color(0xff9E9E9E);
  static Color bottomBar = const Color(0xA194A566);

}
