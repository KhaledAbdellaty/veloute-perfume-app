import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:veloute_app/core/extenstions.dart';
import 'package:veloute_app/core/manager/route_manager.dart';
import 'package:veloute_app/presentation/views/authentication/widgets/auth_header.dart';
import 'package:veloute_app/presentation/views/authentication/widgets/otp_verification/otp_code_widget.dart';

import '../../../core/manager/colors_manager.dart';
import '../../../core/manager/fonts_manager.dart';
import '../../../core/manager/string_manager.dart';
import '../../../core/widgets/custom_button.dart';

class OtpVerificationScreen extends StatelessWidget {
  OtpVerificationScreen({super.key});

  final List<String> list = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          leading: IconButton(
              onPressed: () => Navigator.pop(context),
              icon: const Icon(Icons.arrow_back_ios_new))),
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: 4.h, horizontal: 24.w),
        child: ListView(
          children: [
            //  const CustomBackButton(),
            52.h.emptyHeight,
            const AuthHeader(
              authHeaderStatus: AuthHeaderStatus.otpVerification,
            ),
            32.h.emptyHeight,
            OtpCodeWidget(code: list),
            32.h.emptyHeight,

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  StringsManager.resendCodeTo,
                  style: TextStyle(
                    fontSize: FontsManager.s14.sp,
                    color: ColorsManager.white,
                  ),
                ),
                Text(
                  '01:26',
                  style: TextStyle(
                    fontSize: FontsManager.s14.sp,
                    color: ColorsManager.white,
                  ),
                ),
              ],
            ),
            288.h.emptyHeight,
            CustomButton(
                margin: 0.p,
                onPressed: () => Navigator.pushNamed(
                    context, RouteManager.createNewPasswordScreen),
                switcherCondition: true,
                firstChild: const Text(StringsManager.verify),
                secondChild: const CircularProgressIndicator()),
          ],
        ),
      ),
    );
  }
}
