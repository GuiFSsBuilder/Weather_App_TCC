import 'package:get/get.dart';
import 'package:test_flutter_template_builders/utils/interfaces/interfaces.dart';
import 'login_controller.dart';

class LoginBindings implements Bindings {
  @override
  void dependencies() {
    Get.put(LoginController(Get.find<IHttpClient>()));
  }
}
