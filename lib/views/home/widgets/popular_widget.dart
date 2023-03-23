import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../resources/assets/images_assets.dart';
import '../../../resources/colors/app_colors.dart';

class PopularWidget extends StatelessWidget {
  const PopularWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: AlignmentDirectional.topCenter,
      children: [
        Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('popular_text'.tr,
                  style: GoogleFonts.poppins(
                      fontSize: 18.sp,
                      fontWeight: FontWeight.w600,
                      color: AppColor.appColor
                  ),),
                Text('view_all_text'.tr,
                  style: GoogleFonts.poppins(
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w500,
                      color: AppColor.appColor
                  ),),
              ],
            ),
            SizedBox(height: 31.h,),
            Container(
              decoration: BoxDecoration(
                  color: AppColor.whiteColor,
                  borderRadius: BorderRadius.circular(15.r),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.2),
                      offset: Offset(0, -5),
                      blurRadius: 14,
                      spreadRadius: 1,
                    ),
                  ]
              ),
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10.w,vertical: 12.h),
                    child: Container(
                      height: 161.h,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15.r),
                          color: AppColor.appColor
                      ),
                    ),
                  ),
                  SizedBox(height: 6.h,),
                  Padding(
                    padding: EdgeInsets.only(left: 12.w,right: 8.w),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Chipotle Cheesy Chicken',
                          style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w500,
                              fontSize: 14,
                              color: AppColor.primaryTextColor
                          ),),
                        Text('\$20.95',
                          style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w600,
                              fontSize: 14,
                              color: AppColor.primaryTextColor
                          ),),
                      ],
                    ),
                  ),
                  SizedBox(height: 47.h,),
                ],
              ),

            ),
          ],
        ),
        Padding(
          padding: EdgeInsets.only(top: 25.0),
          child: Center(
            child: Image.asset(
              ImageAssets.cheesyburgerImage,
              height: 177.h,
              width: 200.w,
            ),
          ),
        ),
      ],
    );
  }
}
