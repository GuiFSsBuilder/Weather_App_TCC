import 'package:mobx/mobx.dart';
import 'package:weather_app_tcc/utils/interfaces/interfaces.dart';
part 'login_controller.g.dart';

class LoginController = _LoginControllerBase with _$LoginController;

abstract class _LoginControllerBase with Store {
  final IHttpClient _httpClient;

  @observable
  String name = 'initial';

  _LoginControllerBase(this._httpClient);

  @action
  void setName(String value) => name = value;

  Future<void> login() async {
    name = 'Guilherme';
    // await _httpClient.request(
    //   url: '/any',
    //   method: HttpMethod.get,
    // );
  }
}
