import 'package:get/get.dart';
import 'package:weather_app_tcc/scenes/login/login_bindings.dart';
import 'package:weather_app_tcc/scenes/scenes.dart';
import 'package:weather_app_tcc/scenes/signup/signup_bindings.dart';

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
    ),
    GetPage(
      name: Routes.SEARCH_CITY,
      page: () => SearchCity(),
    ),
  ];
}
