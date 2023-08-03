import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:veloute_app/core/extenstions.dart';

import '../../../../core/manager/colors_manager.dart';

class BottomBarLabel extends StatelessWidget {
  final IconData icon;
  final String name;
  final bool isTap;
  final VoidCallback onTapped;

  const BottomBarLabel({
    super.key,
    required this.name,
    required this.icon,
    required this.isTap,
    required this.onTapped,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTapped,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            icon,
            color: isTap ? ColorsManager.primary : ColorsManager.white,
            size: 18,
          ),
          3.h.emptyHeight,
          Text(
            name,
            style: TextStyle(
              color: isTap ? ColorsManager.primary : ColorsManager.white,
            ),
          ),
        ],
      ),
    );
  }
}
