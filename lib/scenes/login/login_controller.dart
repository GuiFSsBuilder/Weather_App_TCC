import 'package:get/get.dart';
import 'package:test_flutter_template_builders/utils/enums/enums.dart';
import 'package:test_flutter_template_builders/utils/interfaces/interfaces.dart';

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
