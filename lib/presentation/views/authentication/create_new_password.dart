import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:veloute_app/core/extenstions.dart';
import 'package:veloute_app/presentation/views/authentication/widgets/auth_header.dart';
import 'package:veloute_app/presentation/views/authentication/widgets/credential_input_field.dart';

import '../../../core/manager/string_manager.dart';
import '../../../core/widgets/custom_button.dart';

class CreateNewPasswordScreen extends StatelessWidget {
  const CreateNewPasswordScreen({super.key});

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
          shrinkWrap: true,
          children: [
            //  const CustomBackButton(),
            52.h.emptyHeight,
            const AuthHeader(
                authHeaderStatus: AuthHeaderStatus.createNewPasword),
            60.h.emptyHeight,
            CredenialInputField(
                hintMessage: StringsManager.enterNewPassword,
                credentialInput: CredentialInput.password,
                controller: TextEditingController()),
            16.h.emptyHeight,
            CredenialInputField(
                hintMessage: StringsManager.confirmPassword,
                credentialInput: CredentialInput.password,
                controller: TextEditingController()),
            220.h.emptyHeight,
            CustomButton(
                margin: 0.p,
                onPressed: () {},
                switcherCondition: true,
                firstChild: const Text(StringsManager.resetPassword),
                secondChild: const CircularProgressIndicator())
          ],
        ),
      ),
    );
  }
}
