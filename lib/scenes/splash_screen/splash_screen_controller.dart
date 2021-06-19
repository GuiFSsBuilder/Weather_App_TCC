import 'package:get/get.dart';
import 'package:mobx/mobx.dart';
import 'package:location/location.dart';
import 'package:weather_app_tcc/navigation/navigation.dart';
import 'package:weather_app_tcc/utils/entities/entities.dart';
part 'splash_screen_controller.g.dart';

class SplashScreenController = _SplashScreenControllerBase
    with _$SplashScreenController;

abstract class _SplashScreenControllerBase with Store {
  final Location _location;

  _SplashScreenControllerBase(this._location);

  @observable
  bool loading = true;

  @action
  void setLoading(bool value) => loading = value;

  @observable
  String errorMessage = '';

  @observable
  bool serviceEnabled = false;
  @action
  void setServiceEnabled(bool value) => serviceEnabled = value;

  @observable
  PermissionStatus permission = PermissionStatus.denied;
  @action
  void setPermission(PermissionStatus value) => permission = value;

  @computed
  bool get permissionGranted =>
      permission == PermissionStatus.granted ||
      permission == PermissionStatus.grantedLimited;

  @action
  Future<void> checkInitialPermissions() async {
    loading = true;
    try {
      await checkServiceEnabled();
      await checkPermission();
      errorMessage = '';
      if (serviceEnabled && permissionGranted) {
        Get.offAllNamed(Routes.HOME);
      }
    } catch (e) {
      errorMessage = e.toString();
    } finally {
      loading = false;
    }
  }

  @action
  Future<void> checkPermission() async {
    permission = await _location.hasPermission();
    if (permission == PermissionStatus.denied ||
        permission == PermissionStatus.deniedForever) {
      permission = await _location.requestPermission();
      if (permission == PermissionStatus.denied ||
          permission == PermissionStatus.deniedForever) {
        throw Failure('Você precisa permitir a localização para continuar!');
      }
    }
  }

  @action
  Future<void> checkServiceEnabled() async {
    serviceEnabled = await _location.serviceEnabled();
    if (!serviceEnabled) {
      serviceEnabled = await _location.requestService();
      if (!serviceEnabled) {
        throw Failure(
            'Você precisa habilitar o serviço de localização para continuar!');
      }
    }
  }
}
