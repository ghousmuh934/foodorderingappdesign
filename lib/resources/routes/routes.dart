

import 'package:get/get.dart';
import 'package:mvvm_getx/resources/routes/routes_name.dart';
import 'package:mvvm_getx/views/home/detail_view.dart';
import '../../views/home/alluser_view.dart';
import '../../views/home/home_dashboard_view.dart';


class AppRoutes{
  static appRoutes () => [
    GetPage(name: RouteName.homeScreen, page: ()=> const HomeDashboardView(),
        transitionDuration: const Duration(milliseconds: 250),
        transition: Transition.leftToRight
    ),
    GetPage(name: RouteName.detailScreen, page: ()=> const DetailView(),
        transitionDuration: const Duration(milliseconds: 250),
        transition: Transition.leftToRight
    ),
    GetPage(name: RouteName.allUserScreen, page: ()=> const AllUsersView(),
        transitionDuration: const Duration(milliseconds: 250),
        transition: Transition.leftToRight
    )

  ];
}