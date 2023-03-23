import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mvvm_getx/data/response/status.dart';
import 'package:mvvm_getx/repository/home_repository/home_repository.dart';
import 'package:mvvm_getx/resources/colors/app_colors.dart';
import '../../resources/assets/icons_assets.dart';
import '../../resources/assets/images_assets.dart';
import '../../resources/components/general_exception_widget.dart';
import '../../resources/components/internet_exception_widget.dart';
import '../../view_models/controller/home/alluser_view_model.dart';

class AllUsersView extends StatefulWidget {
  const AllUsersView({Key? key}) : super(key: key);

  @override
  State<AllUsersView> createState() => _AllUsersViewState();
}

class _AllUsersViewState extends State<AllUsersView> {

  final homeController = Get.put(HomeController());

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    homeController.userListApiHit();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(left: 15.w,right: 25.w,top: 10.h,bottom: 32.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset(
                    IconsAssets.appbarIcon,
                    height: 20.h,
                    width: 20.w,
                  ),
                  Text('all_user'.tr,
                    style: TextStyle(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w600,
                      color: AppColor.blackColor
                    ),),
                  Image.asset(IconsAssets.accountIcon,
                    width: 29.w,
                    height: 29.h,
                    color: AppColor.navigationUnSelectedTextColor,
                  )

                ],
              ),
            ),
            Expanded(
              child: Obx(() {
                switch(homeController.rxRequestStatus.value) {
                  case Status.LOADING:
                    return const Center(child: CircularProgressIndicator());
                  case Status.ERROR:
                    if(homeController.error.value == 'No Internet null'){
                      return InternetExceptionWidget(onPress: (){
                        homeController.referedhUserListApi();
                      },);
                    }
                    else{
                      return GeneralExceptionWidget(onPress: (){
                        homeController.referedhUserListApi();
                      },);
                    }
                    return Center(child: Text(homeController.error.value));
                  case Status.COMPLETE:
                    return ListView.builder(
                        itemCount: homeController.dataa.length,
                        itemBuilder: (context,index){
                          return Padding(
                            padding: EdgeInsets.only(left: 12.w,top: 10.h),
                            child: Row(
                              children: [
                                 Container(
                                   height: 79.h,
                                   width: 85.w,
                                   decoration: const BoxDecoration(
                                     shape: BoxShape.circle,
                                   ),
                                   child: const CircleAvatar(
                                     // radius: 30,
                                   backgroundImage: AssetImage(ImageAssets.profile2Image,),
                                ),
                                 ),
                                SizedBox(width: 5.w,),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('${homeController.dataa[index]['name']}',
                                      style: GoogleFonts.poppins(
                                        fontSize: 18.sp,
                                        fontWeight: FontWeight.w600,
                                        color: AppColor.appColor
                                      )
                                    ),
                                    Text('${homeController.dataa[index]['email']}',
                                        style: GoogleFonts.poppins(
                                            fontSize: 14.sp,
                                            fontWeight: FontWeight.w500,
                                            color: AppColor.appColor
                                        )
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          );
                        }
                    );
                  default:
                    return const SizedBox();
                }
              }),
            )
          ],
        ),
      ),
    );
  }
}
