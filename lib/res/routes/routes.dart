import 'package:get/get.dart';
import 'package:mvvm_getx/res/routes/routes_name.dart';
import 'package:mvvm_getx/view/splash_screen.dart';

class AppRoutes {
  static appRoute() => [
        GetPage(
          name: RoutesName.splashScreen,
          page: () => const SplashScreen(),
          transition: Transition.leftToRightWithFade,
          transitionDuration: const Duration(milliseconds: 250),
        )
      ];
}
