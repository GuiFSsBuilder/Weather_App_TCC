import 'package:get/get.dart';
import 'package:weather_app_tcc/scenes/signup/signup_controller.dart';

class SignupBindings implements Bindings {
  @override
  void dependencies() {
    Get.put(SignupController());
  }
}
