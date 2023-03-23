import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../resources/assets/icons_assets.dart';
import '../../resources/assets/images_assets.dart';
import '../../resources/colors/app_colors.dart';
import '../../resources/routes/routes_name.dart';

class DetailView extends StatefulWidget {
  const DetailView({Key? key}) : super(key: key);

  @override
  State<DetailView> createState() => _DetailViewState();
}

class _DetailViewState extends State<DetailView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 20.h,),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 15.w),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap : (){

                      },
                      child: Container(
                        height: 40.h,
                        width: 40.w,
                        decoration: BoxDecoration(
                            color: AppColor.whiteColor,
                            borderRadius: BorderRadius.circular(8.r),
                            boxShadow: [
                              BoxShadow(
                                color: AppColor.blackColor.withOpacity(0.1),
                                offset: Offset(-4, -4),
                                blurRadius: 10,
                              ),
                            ]
                        ),
                        child: Center(
                          child: Image.asset(
                            IconsAssets.lessIcon,
                            width: 11.w,
                            height: 17.h,
                            fit: BoxFit.contain,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      height: 40.h,
                      width: 40.w,
                      decoration: BoxDecoration(
                          color: AppColor.whiteColor,
                          borderRadius: BorderRadius.circular(8.r),
                          boxShadow: [
                            BoxShadow(
                              color: AppColor.blackColor.withOpacity(0.1),
                              offset: Offset(-4, -4),
                              blurRadius: 10,
                            ),
                          ]
                      ),
                      child: Center(
                        child: Image.asset(
                          IconsAssets.favIcon,
                          width: 19.w,
                          height: 18.h,
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 12.h,),
              Container(
                height: 400.h,
                decoration: const BoxDecoration(
                  color: AppColor.whiteColor,
                  shape: BoxShape.circle,
                    boxShadow: [
                      BoxShadow(
                        color: Color.fromRGBO(0, 0, 0, 0.1),
                        offset: Offset(6, 6),
                        blurRadius: 30,
                      ),
                    ]
                ),
                child: Center(
                  child: Image.asset(ImageAssets.zingerburgerImage,
                    height: 220.h,
                    width: 242.w,
                  ),
                ),
              ),
              SizedBox(height: 22.h,),
              Text('Chipotle Cheesy Chicken',
              style: GoogleFonts.poppins(
                fontWeight: FontWeight.w600,
                fontSize: 18.sp,
                color: AppColor.secondaryTextColor
              ),),
              SizedBox(height: 15.h,),
              Text('detail_text'.tr,
                textAlign: TextAlign.center,
                style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w400,
                    fontSize: 14.sp,
                    color: AppColor.paragraphTextColor,
                ),),
              SizedBox(height: 50.h,),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.w),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Price',
                        style: GoogleFonts.poppins(
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w400,
                          color: AppColor.paragraphTextColor
                        ),),
                        SizedBox(height: 5.h,),
                        Text('\$41.90',
                          style: GoogleFonts.poppins(
                              fontSize: 24.sp,
                              fontWeight: FontWeight.w500,
                              color: AppColor.secondaryTextColor
                          ),),
                      ],
                    ),
                    InkWell(
                      onTap: (){
                        Get.toNamed(RouteName.allUserScreen);
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(6.r),
                          color: AppColor.appColor
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(19),
                          child: Row(
                            children: [
                              Image.asset(IconsAssets.cartIcon,
                                width: 18.w,
                                height: 20.h,
                              ),
                              SizedBox(width: 12.w,),
                              Text('Go to Cart',
                              style: GoogleFonts.poppins(
                                fontWeight: FontWeight.w500,
                                fontSize: 17.sp,
                                color: AppColor.whiteColor
                              ),)
                            ],
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: 20.h,),
            ],
          ),
        ),
      ),
    );
  }
}
