import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../manager/colors_manager.dart';

class CustomButton extends StatelessWidget {
  final void Function()? onPressed;
  final bool switcherCondition, outLineBorder;
  final Widget firstChild;
  final Widget? secondChild;
  final EdgeInsetsGeometry? margin;
  final double height, width;
  final Color? color;
  const CustomButton(
      {super.key,
      required this.onPressed,
      this.switcherCondition = true,
      this.outLineBorder = false,
      required this.firstChild,
      this.secondChild,
      this.color,
      this.width = double.infinity,
      this.height = 56,
      this.margin = const EdgeInsets.only(left: 25, right: 25, bottom: 41)});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      margin: margin,
      height: height.h,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ButtonStyle(
            backgroundColor: MaterialStatePropertyAll(outLineBorder
                ? ColorsManager.white
                : color ?? ColorsManager.primary),
            shape: outLineBorder
                ? MaterialStatePropertyAll(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(19),
                      side: BorderSide(color: ColorsManager.primary),
                    ),
                  )
                : null),
        child: AnimatedSwitcher(
          duration: const Duration(milliseconds: 200),
          child: switcherCondition ? firstChild : secondChild,
        ),
      ),
    );
  }
}
