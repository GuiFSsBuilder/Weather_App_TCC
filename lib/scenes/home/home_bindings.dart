import 'package:get/get.dart';
import 'package:weather_app_tcc/api/api.dart';
import 'home_controller.dart';

class HomeBindings implements Bindings {
  @override
  void dependencies() {
    Get.put(
      HomeController(
        WeatherApi(Get.find()),
        Get.find(),
      ),
    );
  }
}
