import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:weather_app_tcc/initial_bindings.dart';

import 'navigation/navigation.dart';
import 'theme/theme.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Weather App',
      theme: lightTheme(),
      initialRoute: Routes.SPLASH_SCREEN,
      getPages: getPages(),
      initialBinding: InitialBindings(),
    );
  }
}
