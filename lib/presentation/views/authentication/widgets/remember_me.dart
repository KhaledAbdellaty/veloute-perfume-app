import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:veloute_app/core/extenstions.dart';

import '../../../../core/manager/colors_manager.dart';
import '../../../../core/manager/fonts_manager.dart';
import '../../../../core/manager/route_manager.dart';
import '../../../../core/manager/string_manager.dart';

class RememberMe extends StatelessWidget {
  const RememberMe({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          child: Row(
            children: [
              SizedBox(
                width: 18.w,
                height: 18.w,
                child: Checkbox(
                  value: true,
                  onChanged: (value) {},
                  side: BorderSide(color: ColorsManager.white),
                  activeColor: ColorsManager.primary,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5)),
                ),
              ),
              8.w.emptyWidth,
              Text(
                StringsManager.rememberMe,
                style: TextStyle(
                    color: ColorsManager.white, fontSize: FontsManager.s12.sp),
              )
            ],
          ),
        ),
        SizedBox(
          width: 106.w,
          child: InkWell(
            onTap: () =>
                Navigator.pushNamed(context, RouteManager.forgetPasswordScreen),
            child: Text(
              StringsManager.forgetPassword,
              style: TextStyle(
                  color: ColorsManager.primary, fontSize: FontsManager.s12.sp),
            ),
          ),
        ),
      ],
    );
  }
}
