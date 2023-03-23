import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../resources/assets/icons_assets.dart';
import '../../resources/colors/app_colors.dart';
import '../../view_models/controller/home/alluser_view_model.dart';
import 'alluser_view.dart';
import 'detail_view.dart';
import 'home_dashboard_view.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  final homeController = Get.put(HomeController());

  
  final List<Widget> _children = [
    const HomeDashboardView(),
    const DetailView(),
    const AllUsersView(),
    const AllUsersView(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(() => _children[homeController.currentIndex.value]),
        bottomNavigationBar: Obx(() => Container(
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: AppColor.navigationIconColor.withOpacity(0.25),
                offset: Offset(-6, -6),
                blurRadius: 30,
              ),
            ],
          ),
          child: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            selectedItemColor: AppColor.appColor,

            unselectedItemColor: AppColor.navigationUnSelectedTextColor,
            currentIndex: homeController.currentIndex.value,

            items: [
              BottomNavigationBarItem(
                icon: Column(
                  children: [
                    Image.asset(IconsAssets.homeIcon,
                      height: 20.h,
                      width: 23.w,
                      color: homeController.currentIndex.value == 0 ? AppColor.appColor :
                      AppColor.navigationUnSelectedTextColor,
                    ),
                    SizedBox(height: 4.h),
                  ],
                ),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Column(
                  children: [
                    Image.asset(IconsAssets.favoriteIcon,
                      height: 20.h,
                      width: 23.w,
                      color: homeController.currentIndex.value == 1 ? AppColor.appColor :
                      AppColor.navigationUnSelectedTextColor,
                    ),
                    SizedBox(height: 4.h),
                  ],
                ),
                label: 'Favorites',
              ),
              BottomNavigationBarItem(
                icon: Column(
                  children: [
                    Image.asset(IconsAssets.accountIcon,
                      height: 20.h,
                      width: 23.w,
                      color: homeController.currentIndex.value == 2 ? AppColor.appColor :
                      AppColor.navigationUnSelectedTextColor,
                    ),
                    SizedBox(height: 4.h),
                  ],
                ),
                label: 'All Users',
              ),
              BottomNavigationBarItem(
                icon: Column(
                  children: [
                    Image.asset(IconsAssets.moreIcon,
                      height: 20.h,
                      width: 23.w,
                      color: homeController.currentIndex.value == 3 ? AppColor.appColor :
                      AppColor.navigationUnSelectedTextColor,
                    ),
                    SizedBox(height: 4.h),
                  ],
                ),
                label: 'More',
              ),
            ],
            onTap: (index){
              homeController.setCurrentIndex(index);
            },
          ),
        ))
    );
  }
}
