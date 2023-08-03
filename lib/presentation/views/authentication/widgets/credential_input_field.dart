import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:veloute_app/core/extenstions.dart';

import '../../../../core/manager/colors_manager.dart';
import '../../../../core/manager/fonts_manager.dart';
import '../../../../core/manager/string_manager.dart';
import '../../../business_logic/auth_cubit/auth_cubit.dart';

enum CredentialInput {
  email,
  userName,
  password,
  phone,
}

class CredenialInputField extends StatelessWidget {
  final CredentialInput credentialInput;
  final TextEditingController controller;
  final void Function(String)? onChanged;
  final void Function()? showPassord;
  final String hintMessage;
  const CredenialInputField({
    super.key,
    this.credentialInput = CredentialInput.userName,
    required this.controller,
    this.onChanged,
    this.showPassord,
    this.hintMessage = '',
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthCubit, AuthState>(
      builder: (context, state) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              credentialInput == CredentialInput.email
                  ? StringsManager.email
                  : credentialInput == CredentialInput.password
                      ? StringsManager.password
                      : credentialInput == CredentialInput.phone
                          ? StringsManager.phoneNumer
                          : StringsManager.userName,
              style: TextStyle(fontSize: FontsManager.s16.sp),
            ),
            8.h.emptyHeight,
            AnimatedContainer(
              duration: const Duration(milliseconds: 300),
              width: context.width,
              height: 56.h,
              padding: 18.psh,
              decoration: BoxDecoration(
                  color: ColorsManager.white,
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(
                      width: 1,
                      color: state is AuthValiding
                          ? ColorsManager.primary
                          : Colors.transparent)),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: TextFormField(
                      obscureText: credentialInput == CredentialInput.password
                          ? AuthCubit.of(context).passScure
                          : false,
                      cursorColor: ColorsManager.primary,
                      keyboardType: credentialInput == CredentialInput.email
                          ? TextInputType.emailAddress
                          : credentialInput == CredentialInput.phone
                              ? TextInputType.phone
                              : TextInputType.name,
                      style: TextStyle(
                          color: ColorsManager.background,
                          fontSize: FontsManager.s16.sp),
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          helperStyle: TextStyle(
                              fontSize: FontsManager.s14.sp,
                              color: ColorsManager.grey,
                              fontWeight: FontWeight.w400),
                          hintStyle: TextStyle(color: ColorsManager.grey),
                          hintText: hintMessage.isEmpty
                              ? credentialInput == CredentialInput.email
                                  ? StringsManager.enterYourEmail
                                  : credentialInput == CredentialInput.password
                                      ? StringsManager.enterPassword
                                      : credentialInput ==
                                              CredentialInput.userName
                                          ? StringsManager.enterFullName
                                          : StringsManager.enterPhoneNumber
                              : hintMessage),
                      controller: controller,
                      onChanged: onChanged,
                    ),
                  ),
                  11.w.emptyWidth,
                  Visibility(
                    visible: credentialInput == CredentialInput.password,
                    child: InkWell(
                      onTap: showPassord,
                      child: Icon(
                        FontAwesomeIcons.solidEyeSlash,
                        color: ColorsManager.grey,
                        size: 16,
                      ),
                    ),
                  )
                ],
              ),
            ),
            5.h.emptyHeight,
            credentialInput == CredentialInput.email
                ? Visibility(
                    visible: state is ValidingEmail && state is! ValidEmail,
                    child: const Text(
                      "Invalid email",
                      style: TextStyle(color: Colors.red),
                    ))
                : credentialInput == CredentialInput.userName
                    ? Visibility(
                        visible: state is ValidingUserName &&
                            state is! ValidUserName,
                        child: const Text(
                          "username must be at least 8 characters",
                          textAlign: TextAlign.start,
                          style: TextStyle(color: Colors.red),
                        ))
                    : Visibility(
                        visible: state is ValidingPassword &&
                            state is! ValidPassword,
                        child: const Text(
                          "password must be at least 8 characters",
                          textAlign: TextAlign.start,
                          style: TextStyle(color: Colors.red),
                        )),
          ],
        );
      },
    );
  }
}
