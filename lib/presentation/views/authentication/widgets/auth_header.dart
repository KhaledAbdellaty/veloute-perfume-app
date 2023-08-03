import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:veloute_app/core/extenstions.dart';

import '../../../../core/manager/colors_manager.dart';
import '../../../../core/manager/fonts_manager.dart';
import '../../../../core/manager/string_manager.dart';

enum AuthHeaderStatus {
  signIn,
  signUp,
  forgetPassword,
  otpVerification,
  createNewPasword,
}

class AuthHeader extends StatelessWidget {
  final AuthHeaderStatus authHeaderStatus;
  const AuthHeader({
    super.key,
    required this.authHeaderStatus,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          authHeaderStatus == AuthHeaderStatus.signIn
              ? StringsManager.signInTitle
              : authHeaderStatus == AuthHeaderStatus.signUp
                  ? StringsManager.signUpTitle
                  : authHeaderStatus == AuthHeaderStatus.forgetPassword
                      ? StringsManager.forgetPassword.split('?').first
                      : authHeaderStatus == AuthHeaderStatus.otpVerification
                          ? StringsManager.otpVirificationTitle
                          : StringsManager.createNewPasswordTitle,
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.headlineLarge?.copyWith(
              fontSize: FontsManager.s24.sp, color: ColorsManager.primary),
        ),
        16.h.emptyHeight,
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: Text(
                authHeaderStatus == AuthHeaderStatus.signIn
                    ? StringsManager.signInSubTitle
                    : authHeaderStatus == AuthHeaderStatus.signUp
                        ? StringsManager.signUpSubTitle
                        : authHeaderStatus == AuthHeaderStatus.forgetPassword
                            ? StringsManager.forgetPasswordSubTitle
                                .split('?')
                                .first
                            : authHeaderStatus ==
                                    AuthHeaderStatus.otpVerification
                                ? StringsManager.otpVirificationSubTitle
                                : StringsManager.createNewPasswordSubTitle,
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.headlineSmall,
              ),
            ),
            Visibility(
              visible: authHeaderStatus == AuthHeaderStatus.otpVerification,
              child: Icon(
                FontAwesomeIcons.pencil,
                color: ColorsManager.primary,
                size: 24,
              ),
            )
          ],
        ),
      ],
    );
  }
}
