import 'package:get/get.dart';
import 'package:location/location.dart';
import 'package:weather_app_tcc/api/api.dart';
import 'package:weather_app_tcc/stores/stores.dart';
import 'package:weather_app_tcc/utils/interfaces/interfaces.dart';

class InitialBindings implements Bindings {
  @override
  void dependencies() {
    Get.put(Location());
    Get.put<IHttpClient>(HttpClient());
    Get.put(UserStore(Get.find()));
  }
}
