import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/manager/fonts_manager.dart';

class MiniButton extends StatelessWidget {
  final bool visible;
  final double? rightPosition;
  final double? leftPosition;
  final double? topPosition;
  final double? bottomPosition;
  final void Function()? onPressed;
  final String text;
  const MiniButton({
    super.key,
    required this.visible,
    required this.onPressed,
    required this.text,
    this.bottomPosition,
    this.leftPosition,
    this.rightPosition,
    this.topPosition,
  });

  @override
  Widget build(BuildContext context) {
    return Visibility(
        visible: visible,
        child: Positioned(
          right: rightPosition,
          top: topPosition,
          left: leftPosition,
          bottom: bottomPosition,
          child: TextButton(
            onPressed: onPressed,
            child: Text(text,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: FontsManager.s16.sp,
                    fontWeight: FontWeight.w500)),
          ),
        ));
  }
}
