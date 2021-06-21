import 'package:mobx/mobx.dart';
import 'package:weather_app_tcc/api/api.dart';
import 'package:weather_app_tcc/stores/stores.dart';
import 'package:weather_app_tcc/utils/entities/entities.dart';
part 'home_controller.g.dart';

class HomeController = _HomeControllerBase with _$HomeController;

abstract class _HomeControllerBase with Store {
  final WeatherApi _weatherApi;
  final UserStore _userStore;

  _HomeControllerBase(
    this._weatherApi,
    this._userStore,
  );

  @observable
  List<WeatherModel> weatherList = [];

  @observable
  bool loading = true;

  @observable
  String errorMessage = '';

  @action
  void setLoading(bool value) => loading = value;

  @action
  Future<void> fetchWeatherList() async {
    loading = true;
    try {
      final userCoords = _userStore.userCoordinates;
      if (userCoords == null) throw Failure('Localização não encontrada');
      final userLocationWeather =
          await _weatherApi.getWeatherByCoordinates(userCoords);
      weatherList = [userLocationWeather];
    } on Failure catch (e) {
      errorMessage = e.message;
    } finally {
      loading = false;
    }
  }
}
