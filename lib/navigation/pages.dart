import 'package:get/get.dart';
import 'package:weather_app_tcc/scenes/home/home_bindings.dart';
import 'package:weather_app_tcc/scenes/scenes.dart';
import 'package:weather_app_tcc/scenes/login/login_bindings.dart';
import 'package:weather_app_tcc/scenes/signup/signup_bindings.dart';
import 'package:weather_app_tcc/scenes/splash_screen/splash_screen_bindings.dart';

import 'routes.dart';

List<GetPage> getPages() {
  return [
    GetPage(
      name: Routes.LOGIN,
      page: () => Login(),
      binding: LoginBindings(),
    ),
    GetPage(
      name: Routes.SIGNUP,
      page: () => Signup(),
      binding: SignupBindings(),
    ),
    GetPage(
      name: Routes.HOME,
      page: () => Home(),
      binding: HomeBindings(),
    ),
    GetPage(
      name: Routes.SEARCH_CITY,
      page: () => SearchCity(),
    ),
    GetPage(
      name: Routes.SPLASH_SCREEN,
      page: () => SplashScreen(),
      binding: SplashScreenBindings(),
    ),
  ];
}
