import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:mvvm_getx/resources/assets/images_assets.dart';
import 'package:mvvm_getx/resources/colors/app_colors.dart';
import 'package:mvvm_getx/resources/routes/routes.dart';
import 'package:mvvm_getx/views/home/widgets/appbar_widget.dart';
import 'package:mvvm_getx/views/home/widgets/icon_box_widget.dart';
import 'package:mvvm_getx/views/home/widgets/popular_widget.dart';
import '../../resources/assets/icons_assets.dart';
import '../../resources/routes/routes_name.dart';
import '../../view_models/controller/home/alluser_view_model.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeDashboardView extends StatefulWidget {
  const HomeDashboardView({Key? key}) : super(key: key);

  @override
  State<HomeDashboardView> createState() => _HomeDashboardViewState();
}

class _HomeDashboardViewState extends State<HomeDashboardView> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(left: 14.w,right: 16.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 20.h,),
                const AppBarWidget(),
                SizedBox(height: 17.h,),
                Padding(
                  padding: EdgeInsets.only(left: 7.w),
                  child: Text('welcome_text'.tr,
                  textAlign: TextAlign.start,
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w600,
                    fontSize: 21.sp,
                    //height: 31.5.h,
                    color: AppColor.appColor
                  ),),
                ),
                SizedBox(height: 25.h,),
                Padding(
                  padding: EdgeInsets.only(left: 5.w,right: 16.32.w),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      IconBoxWidget(
                        iconName: IconsAssets.coffeeIcon,
                        color: AppColor.appColor,
                        text: 'Coffee',
                        textColor: AppColor.blackColor,
                      ),
                      IconBoxWidget(
                        iconName: IconsAssets.snacksIcon,
                        text: 'Snacks',
                      ),
                      IconBoxWidget(
                        iconName: IconsAssets.drinkIcon,
                        text: 'Drink',
                      ),
                      IconBoxWidget(
                        iconName: IconsAssets.veganIcon,
                        text: 'Vegan',
                      ),

                    ],
                  ),
                ),
                SizedBox(height: 23.h,),
                const PopularWidget(),
                SizedBox(height: 18.h,),
                Padding(
                  padding: EdgeInsets.only(left: 10.w),
                  child: Text('popular_item'.tr,
                    style: GoogleFonts.poppins(
                        fontSize: 18.sp,
                        fontWeight: FontWeight.w600,
                        color: AppColor.appColor
                    ),),
                ),
                SizedBox(height: 15.h,),
                Padding(
                  padding: EdgeInsets.only(right: 8.w),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                color: AppColor.whiteColor,
                                borderRadius: BorderRadius.circular(13.sp),
                                boxShadow: [
                                  BoxShadow(
                                    color: AppColor.blackColor.withOpacity(0.05),
                                    offset: Offset(-4, -4),
                                    blurRadius: 10,
                                  ),
                                ]
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Image.asset(
                                ImageAssets.cheesyburgerImage,
                                width: 60.w,
                                height: 70.8.h,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          SizedBox(width: 5.w,),
                          Text('Chipotle Cheesy Chicken\n\$62.85',
                            style: GoogleFonts.poppins(
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w500,
                                color: AppColor.primaryTextColor
                            ),)
                        ],
                      ),
                      Image.asset(
                          IconsAssets.favoriteIcon,
                        width: 19.95.w,
                        height: 18.h,
                      )
                    ],
                  ),
                ),
                SizedBox(height: 19.h,),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
