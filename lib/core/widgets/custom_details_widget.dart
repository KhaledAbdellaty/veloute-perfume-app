import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:veloute_app/core/extenstions.dart';

import '../manager/colors_manager.dart';
import 'custom_popmenu_widget.dart';

class CustomDetailsWidget extends StatelessWidget {
  final String image;
  final dynamic imageTagHero;
  final List<Widget> children;
  const CustomDetailsWidget({
    super.key,
    required this.image,
    required this.imageTagHero,
    required this.children,
  });

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverAppBar(
          floating: true,
          expandedHeight: 360.h,
          leadingWidth: 100.w,
          leading: InkWell(
            onTap: () => Navigator.pop(context),
            child: Container(
              width: 40.h,
              height: 40.h,
              // padding: 10.h.psv,
              margin: EdgeInsets.symmetric(horizontal: 24.w, vertical: 10.h),
              decoration: BoxDecoration(
                  color: ColorsManager.white, shape: BoxShape.circle),
              alignment: Alignment.center,
              child: Icon(
                Icons.arrow_back_ios_sharp,
                color: ColorsManager.white,
              ),
            ),
          ),
          actions: [
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.bookmark_border_rounded,
                )),
            const CustomPopMenu(
              iconSize: 18,
            ),
          ],
          flexibleSpace: FlexibleSpaceBar(
            background: Hero(
              tag: imageTagHero,
              child: Stack(
                children: [
                  Positioned(
                    left: 0,
                    right: 0,
                    top: 0,
                    bottom: 0,
                    child: Image.asset(
                      image,
                      fit: BoxFit.cover,
                      //  colorBlendMode: BlendMode.darken,
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    child: SizedBox(
                      height: 360.h,
                      width: context.width,
                      // decoration: BoxDecoration(
                      //     gradient: LinearGradient(
                      //         begin: Alignment.topCenter,
                      //         end: Alignment.bottomCenter,
                      //         colors: [
                      //       ColorsManager.black.withOpacity(0.2),
                      //       ColorsManager.black.withOpacity(0.4),
                      //       ColorsManager.black.withOpacity(0),
                      //       ColorsManager.black.withOpacity(0.4),
                      //       ColorsManager.black,
                      //     ],
                      //         stops: const [
                      //       0.1,
                      //       0.9,
                      //       0,
                      //       0.9,
                      //       1
                      //     ])),
                    ),
                  )
                ],
              ),
            ),
          ),
          backgroundColor: ColorsManager.background,
        ),
        SliverList(delegate: SliverChildListDelegate(children))
      ],
    );
  }
}
