import 'package:get/get.dart';
import 'package:mvvm_getx/res/routes/routes_name.dart';
import 'package:mvvm_getx/view/home/home_screen.dart';
import 'package:mvvm_getx/view/login/login_screen.dart';
import 'package:mvvm_getx/view/splash_screen.dart';

class AppRoutes {
  static appRoute() => [
        GetPage(
          name: RoutesName.splashScreen,
          page: () => const SplashScreen(),
          transition: Transition.leftToRightWithFade,
          transitionDuration: const Duration(milliseconds: 250),
        ),
    GetPage(
      name: RoutesName.loginScreen,
      page: () =>  LoginScreen(),
      transition: Transition.leftToRightWithFade,
      transitionDuration: const Duration(milliseconds: 250),
    ),
    GetPage(
      name: RoutesName.homeScreen,
      page: () => const HomeScreen(),
      transition: Transition.leftToRightWithFade,
      transitionDuration: const Duration(milliseconds: 250),
    ),
      ];
}
