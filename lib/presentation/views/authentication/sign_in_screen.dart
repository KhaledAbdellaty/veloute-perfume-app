import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:veloute_app/core/extenstions.dart';
import 'package:veloute_app/core/manager/colors_manager.dart';
import 'package:veloute_app/core/manager/images_manager.dart';
import 'package:veloute_app/presentation/views/authentication/widgets/auth_footer.dart';
import 'package:veloute_app/presentation/views/authentication/widgets/credential_input_field.dart';
import 'package:veloute_app/presentation/views/authentication/widgets/remember_me.dart';
import '../../../core/manager/string_manager.dart';
import '../../../core/widgets/custom_button.dart';
import '../../business_logic/auth_cubit/auth_cubit.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final authCubit = AuthCubit.of(context);
    return Scaffold(
      body: Stack(
        //  fit: StackFit.expand,
        children: [
          Positioned(top: 0, child: Image.asset(ImagesManager.login)),
          Positioned(
            left: 40.w,
            top: 125.h,
            child: Image.asset(ImagesManager.imagesLogo),
          ),
          Positioned(
            top: 276.h,
            left: 0,
            right: 0,
            child: Padding(
              padding: 24.w.psh,
              child: Column(
                children: [
                  CredenialInputField(
                    credentialInput: CredentialInput.email,
                    controller: authCubit.emailController,
                    onChanged: (p0) => authCubit.startValdit(
                        credential: CredentialInput.email, value: p0),
                  ),
                  16.h.emptyHeight,
                  CredenialInputField(
                    credentialInput: CredentialInput.password,
                    controller: authCubit.passwordController,
                    onChanged: (p0) => authCubit.startValdit(
                        credential: CredentialInput.password, value: p0),
                    showPassord: () => authCubit.showPassord(isLogin: true),
                  ),
                  16.h.emptyHeight,
                  const RememberMe(),
                  56.h.emptyHeight,
                  BlocBuilder<AuthCubit, AuthState>(
                    builder: (context, state) {
                      return CustomButton(
                        margin: 0.p,
                        onPressed: state is AuthValiding
                            ? null
                            : () => AuthCubit.of(context)
                                .login('userName', 'password', context),
                        switcherCondition: state is! AuthLoading,
                        firstChild: const Text(StringsManager.signIn),
                        secondChild: CircularProgressIndicator(
                          color: ColorsManager.white,
                        ),
                      );
                    },
                  ),
                  24.h.emptyHeight,
                  const AuthFooter(
                    authFooterStatus: AuthFooterStatus.signIn,
                  ),
                  34.h.emptyHeight,
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
