import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:veloute_app/core/extenstions.dart';
import 'package:veloute_app/core/manager/fonts_manager.dart';
import 'package:veloute_app/presentation/views/authentication/widgets/auth_footer.dart';
import 'package:veloute_app/presentation/views/authentication/widgets/credential_input_field.dart';

import '../../../core/manager/colors_manager.dart';
import '../../../core/manager/string_manager.dart';
import '../../../core/widgets/custom_button.dart';
import '../../business_logic/auth_cubit/auth_cubit.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final authCubit = AuthCubit.of(context);

    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.arrow_back_ios_new),
        title: Text(
          StringsManager.signUp,
          style: TextStyle(
              color: ColorsManager.primary,
              fontSize: FontsManager.s24.sp,
              fontWeight: FontWeight.w500,
              fontFamily: GoogleFonts.poppins().fontFamily),
        ),
      ),
      body: Padding(
        padding: 24.w.psh,
        child: ListView(
          shrinkWrap: true,
          children: [
            24.h.emptyHeight,
            CredenialInputField(
              controller: authCubit.userNameController,
              credentialInput: CredentialInput.userName,
              onChanged: (p0) => authCubit.startValdit(
                  credential: CredentialInput.userName, value: p0),
            ),
            16.h.emptyHeight,
            CredenialInputField(
              controller: authCubit.emailController,
              credentialInput: CredentialInput.email,
              onChanged: (p0) => authCubit.startValdit(
                  credential: CredentialInput.email, value: p0),
            ),
            16.h.emptyHeight,
            CredenialInputField(
              controller: authCubit.emailController,
              credentialInput: CredentialInput.phone,
              onChanged: (p0) => authCubit.startValdit(
                  credential: CredentialInput.email, value: p0),
            ),
            16.h.emptyHeight,
            CredenialInputField(
              credentialInput: CredentialInput.password,
              controller: authCubit.passwordController,
              onChanged: (p0) => authCubit.startValdit(
                  credential: CredentialInput.password, value: p0),
              showPassord: () => authCubit.showPassord(isLogin: false),
            ),
            40.h.emptyHeight,
            BlocBuilder<AuthCubit, AuthState>(
              builder: (context, state) {
                return CustomButton(
                    margin: 0.p,
                    onPressed: state is AuthValiding
                        ? null
                        : () => AuthCubit.of(context)
                            .login('userName', 'password', context),
                    switcherCondition: state is! AuthLoading,
                    firstChild: const Text(StringsManager.signUp),
                    secondChild: CircularProgressIndicator(
                      color: ColorsManager.white,
                    ));
              },
            ),
            24.h.emptyHeight,
            const AuthFooter(
              authFooterStatus: AuthFooterStatus.signUp,
            )
          ],
        ),
      ),
    );
  }
}
