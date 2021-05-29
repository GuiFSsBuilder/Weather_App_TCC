import 'package:get/get.dart';
import 'package:weather_app_tcc/utils/enums/enums.dart';
import 'package:weather_app_tcc/utils/interfaces/interfaces.dart';

class LoginController extends GetxController {
  final IHttpClient _httpClient;
  final _name = ''.obs;

  LoginController(this._httpClient);

  String get name => _name.value;

  set name(String value) => _name.value = value;

  Future<void> login() async {
    await _httpClient.request(
      url: '/any',
      method: HttpMethod.get,
    );
  }
}
