import 'package:mobx/mobx.dart';
part 'login_controller.g.dart';

class LoginController = _LoginControllerBase with _$LoginController;

abstract class _LoginControllerBase with Store {
  @observable
  String name = 'initial';

  @action
  void setName(String value) => name = value;

  Future<void> login() async {
    name = 'Guilherme';
  }
}
