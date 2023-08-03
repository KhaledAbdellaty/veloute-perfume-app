import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:veloute_app/core/extenstions.dart';

import '../../../../core/manager/colors_manager.dart';


class SocialSignInButton extends StatelessWidget {
  final IconData icon;
  final void Function()? onPressed;
  const SocialSignInButton({
    super.key,
     required this.onPressed,
    required this.icon,
   
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
                  width: 48.w,
                  height: 48.w,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(
                        color: ColorsManager.white,
                      )),
                  alignment: Alignment.center,
                  padding: 11.p,
                  child: Icon(icon),
                ),
    );
  }
}
