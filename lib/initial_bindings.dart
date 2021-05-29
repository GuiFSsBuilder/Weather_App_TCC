import 'package:get/get.dart';
import 'package:test_flutter_template_builders/api/api.dart';
import 'package:test_flutter_template_builders/utils/interfaces/interfaces.dart';

class InitialBindings implements Bindings {
  @override
  void dependencies() {
    Get.put<IHttpClient>(HttpClient());
  }
}
