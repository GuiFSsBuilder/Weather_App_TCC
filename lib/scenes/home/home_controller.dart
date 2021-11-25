import 'package:flutter/material.dart';
import 'package:get/get.dart';
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
  WeatherModel? currentWeather;

  @observable
  WeatherForecastModel? weatherForecast;

  @observable
  bool loading = true;

  @action
  void setLoading(bool value) => loading = value;

  @action
  Future<void> fetchWeather() async {
    loading = true;
    try {
      final userCoords = _userStore.userCoordinates;
      if (userCoords == null) throw Failure('Localização não encontrada');
      currentWeather = await _weatherApi.getWeatherByCoordinates(userCoords);
      await _getWeatherForecast(userCoords);
    } on Failure catch (e) {
      _showError(e.message);
    } finally {
      loading = false;
    }
  }

  @action
  Future<void> _getWeatherForecast(Coordinates coordinates) async {
    final forecast =
        await _weatherApi.getWeatherForecastByCoordinates(coordinates);
    forecast.daily.removeRange(0, 1);
    weatherForecast = forecast;
  }

  void _showError(String message) {
    Get.snackbar(
      'Erro ao buscar clima',
      message,
      colorText: Colors.white,
      backgroundColor: const Color.fromRGBO(255, 0, 0, 0.4),
      duration: const Duration(seconds: 3),
    );
  }

  @action
  Future<void> searchWeatherByCity(String city) async {
    loading = true;
    try {
      final weather = await _weatherApi.getWeatherByCity(city);
      currentWeather = weather;
      final coord = weather.coord;
      final userCoords = Coordinates(
        lat: coord.lat.toString(),
        lng: coord.lon.toString(),
      );
      _userStore.userCoordinates = userCoords;
      await _getWeatherForecast(userCoords);
    } on Failure catch (e) {
      _showError(e.message);
    } finally {
      loading = false;
    }
  }
}
