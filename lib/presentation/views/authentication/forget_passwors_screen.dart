import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:veloute_app/core/extenstions.dart';
import 'package:veloute_app/presentation/views/authentication/widgets/auth_header.dart';
import 'package:veloute_app/presentation/views/authentication/widgets/credential_input_field.dart';

import '../../../core/manager/route_manager.dart';
import '../../../core/manager/string_manager.dart';
import '../../../core/widgets/custom_button.dart';
import '../../business_logic/auth_cubit/auth_cubit.dart';

class ForgetPasswordScreen extends StatelessWidget {
  const ForgetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final authCubit = AuthCubit.of(context);

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
              authHeaderStatus: AuthHeaderStatus.forgetPassword,
            ),
            56.h.emptyHeight,
            CredenialInputField(
              controller: authCubit.emailController,
              credentialInput: CredentialInput.email,
            ),
            328.h.emptyHeight,
            BlocBuilder<AuthCubit, AuthState>(
              builder: (context, state) {
                return CustomButton(
                    margin: 0.p,
                    onPressed: () => Navigator.pushNamed(
                        context, RouteManager.otpVerificationScreen),
                    switcherCondition: true,
                    firstChild: const Text(StringsManager.send),
                    secondChild: const CircularProgressIndicator());
              },
            )
          ],
        ),
      ),
    );
  }
}
