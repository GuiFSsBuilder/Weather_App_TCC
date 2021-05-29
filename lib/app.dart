import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_flutter_template_builders/initial_bindings.dart';

import 'navigation/navigation.dart';
import 'theme/theme.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Template',
      theme: darkTheme(),
      initialRoute: Routes.LOGIN,
      getPages: getPages(),
      initialBinding: InitialBindings(),
    );
  }
}
