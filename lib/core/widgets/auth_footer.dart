// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:veloute_app/core/extenstions.dart';

// import '../manager/colors_manager.dart';
// import '../manager/fonts_manager.dart';
// import '../manager/string_manager.dart';

// enum AuthFooterStatus {
//   signIn,
//   signUp,
// }

// class AuthFooter extends StatelessWidget {
//   final AuthFooterStatus authFooterStatus;
//   const AuthFooter({super.key, required this.authFooterStatus});

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         Row(
//           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//           children: [
//             Expanded(
//               child: Container(
//                 height: 1.h,
//                 decoration: BoxDecoration(
//                   color: ColorsManager.white,
//                   borderRadius: BorderRadius.circular(10),
//                 ),
//               ),
//             ),
//             20.w.emptyWidth,
//             Text(
//               authFooterStatus == AuthFooterStatus.signIn
//                   ? StringsManager.orSignInWith
//                   : StringsManager.orConnectInWith,
//               style: TextStyle(
//                   color: ColorsManager.white,
//                   fontSize: FontsManager.s14,
//                   fontWeight: FontWeight.w600),
//             ),
//             20.w.emptyWidth,
//             Expanded(
//               child: Container(
//                 height: 1.h,
//                 // width: 94.w,
//                 decoration: BoxDecoration(
//                   color: ColorsManager.white,
//                   borderRadius: BorderRadius.circular(10),
//                 ),
//               ),
//             ),
//           ],
//         ),
//         32.h.emptyHeight,
//         Row(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             SocialSignInButton(
//               onPressed: () {},
//               icon: AssetsManager.google,
//             ),
//             16.w.emptyWidth,
//             SocialSignInButton(
//               onPressed: () {},
//               icon: AssetsManager.apple,
//             ),
//             16.w.emptyWidth,
//             SocialSignInButton(
//               onPressed: () {},
//               icon: AssetsManager.facebook,
//             ),
//           ],
//         ),
//         24.h.emptyHeight,
//         Row(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Text(
//               authFooterStatus == AuthFooterStatus.signIn
//                   ? StringsManager.dontHaveAccount
//                   : StringsManager.alreadyHaveAccount,
//               style: TextStyle(
//                   fontSize: FontsManager.s14, color: ColorsManager.white),
//             ),
//             5.w.emptyWidth,
//             InkWell(
//               onTap: authFooterStatus == AuthFooterStatus.signIn
//                   ? () => Navigator.pushNamed(context, MyRoute.signUpScreen)
//                   : () => Navigator.pushNamed(context, MyRoute.signInScreen),
//               child: Text(
//                   authFooterStatus == AuthFooterStatus.signIn
//                       ? StringsManager.signUp
//                       : StringsManager.signIn,
//                   style: TextStyle(
//                       fontSize: FontsManager.s14, color: ColorsManager.primary)),
//             ),
//           ],
//         )
//       ],
//     );
//   }
// }
