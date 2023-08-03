import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:veloute_app/core/manager/route_manager.dart';

import '../../views/authentication/widgets/credential_input_field.dart';


part 'auth_state.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit() : super(AuthInitial());
  static AuthCubit of(BuildContext context) => BlocProvider.of(context);
  TextEditingController userNameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool passScure = false;
  Future<void> login(
      String userName, String password, BuildContext context) async {
    emit(AuthLoading());
    Future.delayed(
      Duration(milliseconds: 3000),
      () => Navigator.pushNamed(context, RouteManager.homeScreen),
    );
    print(emailController.text);
    print(passwordController.text);
    FocusScope.of(context).unfocus();
    // emailController.dispose();
    // passwordController.dispose();
  }

  void showPassord({required bool isLogin}) {
    passScure = !passScure;
    if (isLogin) {
      if (emailController.text.isEmpty || passwordController.text.isEmpty) {
        emit(AuthValiding());
      } else {
        emit(AuthInitial());
      }
    } else {
      if (emailController.text.isEmpty ||
          passwordController.text.isEmpty ||
          userNameController.text.isEmpty) {
        emit(AuthValiding());
      } else {
        emit(AuthInitial());
      }
    }
  }

  startValdit({required CredentialInput credential, required String value}) {
    emit(AuthValiding());
    passScure = true;
    switch (credential) {
      case CredentialInput.email:
        if (emailController.text.isNotEmpty &&
            emailController.text.contains('@') &&
            emailController.text.contains('.')) {
          emit(ValidEmail());
          break;
        }
        return emit(ValidingEmail());

      case CredentialInput.userName:
        if (userNameController.text.isNotEmpty &&
            userNameController.text.length > 5) {
          emit(ValidUserName());
          break;
        }
        return emit(ValidingUserName());
      case CredentialInput.password:
        if (passwordController.text.isNotEmpty &&
            passwordController.text.length > 7) {
          emit(ValidPassword());
          break;
        }
        return emit(ValidingPassword());
    }
  }
}
