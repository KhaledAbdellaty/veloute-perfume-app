import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:veloute_app/core/extenstions.dart';
import '../manager/fonts_manager.dart';

class CustomPopMenu extends StatelessWidget {
  final bool verticalIcon;
  final double iconSize;
  const CustomPopMenu({
    this.iconSize = 13,
    this.verticalIcon = false,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(//cardColor: ColorsManager.popUpColor
      ),
      child: PopupMenuButton<int>(
        
        padding: 0.p,
        shape: RoundedRectangleBorder(
          borderRadius: 8.allRaduis,
        ),
        icon: Icon(
          verticalIcon ? Icons.more_vert_outlined : Icons.more_horiz_outlined,
        ),
        //color: ColorManager.white,
        iconSize: iconSize.w,
        offset: Offset(-24.w, 40.h),

        itemBuilder: (context) {
          return [
            PopupMenuItem(
                height: 31.h,
                child: Text(
                  'Mark as watched',
                  style: TextStyle(fontSize: FontsManager.s10),
                )),
            const PopupMenuDivider(),
            PopupMenuItem(
              height: 31.h,
              child: Text(
                'Share',
                style: TextStyle(fontSize: FontsManager.s10),
              ),
            ),
          ];
        },
      ),
    );
  }
}
