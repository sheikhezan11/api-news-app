import 'package:get/get.dart';
import 'package:news_app/res/routes/routes.dart';
import 'package:news_app/view/home/home_screen.dart';

import '../../view/splash_screen.dart';

class AppRoutes {
  static appRoutes () => [
    //GetPage(name: RoutesName.loginScreen, page: () => LoginView(),  transition: Transition.rightToLeftWithFade, transitionDuration: const Duration(seconds: 1),),
    GetPage(name: RoutesName.homeScreen, page: () => HomeScreen(),  transition: Transition.rightToLeftWithFade, transitionDuration: const Duration(seconds: 1),),
  ];
}