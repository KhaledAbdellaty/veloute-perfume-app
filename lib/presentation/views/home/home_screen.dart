import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:veloute_app/core/extenstions.dart';
import 'package:veloute_app/core/manager/fonts_manager.dart';
import 'package:veloute_app/core/manager/images_manager.dart';
import 'package:veloute_app/presentation/business_logic/auth_cubit/auth_cubit.dart';
import 'package:veloute_app/presentation/views/authentication/widgets/credential_input_field.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AuthCubit(),
      child: Scaffold(
        body: CustomScrollView(
          slivers: [
            SliverAppBar(
              snap: true,
              floating: true,
              leadingWidth: double.infinity,
              leading: Padding(
                padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 15.h),
                child: Row(
                  children: [
                    Container(
                      width: 32.w,
                      height: 32.w,
                      decoration: const BoxDecoration(shape: BoxShape.circle),
                      clipBehavior: Clip.antiAlias,
                      child: Image.asset(ImagesManager.login),
                    ),
                    6.w.emptyWidth,
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Welcome',
                          style: TextStyle(
                              fontSize: FontsManager.s12.sp,
                              fontWeight: FontWeight.w500),
                        ),
                        Text(
                          'Khaled Abdelaty',
                          style: TextStyle(fontSize: FontsManager.s10.sp),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: Row(
                children: [
                  ConstrainedBox(
                      constraints: BoxConstraints(maxWidth: 267.w),
                      child: CredenialInputField(
                          controller: TextEditingController())),
                  Expanded(
                      child: IconButton(
                          onPressed: () {}, icon: Icon(Icons.filter)))
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
