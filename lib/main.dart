import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:mvvm_getx/resources/getx_localization/languages.dart';
import 'package:mvvm_getx/resources/routes/routes.dart';
import 'package:mvvm_getx/views/home/home_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(375, 812),
        minTextAdapt: true,
        splitScreenMode: true,
      builder: (context,child) {
        return GetMaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Flutter Demo',
          translations: Languages(),
          locale: const Locale('en' , 'US'),
          fallbackLocale: const Locale('en' , 'US'),
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
          home: const HomeView(),
          getPages: AppRoutes.appRoutes()
        );
      }
    );
  }
}




