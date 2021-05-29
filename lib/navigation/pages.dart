import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:test_flutter_template_builders/scenes/login/login_bindings.dart';
import 'package:test_flutter_template_builders/scenes/scenes.dart';

import 'routes.dart';

List<GetPage> getPages() {
  return [
    GetPage(name: Routes.LOGIN, page: () => Login(), binding: LoginBindings()),
    GetPage(name: Routes.HOME, page: () => const Text('Home page')),
    GetPage(name: Routes.INFO, page: () => const Text('Info page')),
  ];
}
