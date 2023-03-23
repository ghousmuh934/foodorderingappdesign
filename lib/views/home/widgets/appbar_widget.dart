import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../resources/assets/icons_assets.dart';
import '../../../resources/assets/images_assets.dart';

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Image.asset(
          IconsAssets.appbarIcon,
          height: 20.h,
          width: 20.w,
        ),
        Text('welcome'.tr,
          style: TextStyle(
              fontSize: 16.sp,
              fontWeight: FontWeight.w600
          ),),
        const CircleAvatar(
          radius: 15,
          backgroundImage: AssetImage(ImageAssets.profileImage),
        )
      ],
    );
  }
}
