// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$HomeController on _HomeControllerBase, Store {
  final _$currentWeatherAtom = Atom(name: '_HomeControllerBase.currentWeather');

  @override
  WeatherModel? get currentWeather {
    _$currentWeatherAtom.reportRead();
    return super.currentWeather;
  }

  @override
  set currentWeather(WeatherModel? value) {
    _$currentWeatherAtom.reportWrite(value, super.currentWeather, () {
      super.currentWeather = value;
    });
  }

  final _$weatherForecastAtom =
      Atom(name: '_HomeControllerBase.weatherForecast');

  @override
  WeatherForecastModel? get weatherForecast {
    _$weatherForecastAtom.reportRead();
    return super.weatherForecast;
  }

  @override
  set weatherForecast(WeatherForecastModel? value) {
    _$weatherForecastAtom.reportWrite(value, super.weatherForecast, () {
      super.weatherForecast = value;
    });
  }

  final _$loadingAtom = Atom(name: '_HomeControllerBase.loading');

  @override
  bool get loading {
    _$loadingAtom.reportRead();
    return super.loading;
  }

  @override
  set loading(bool value) {
    _$loadingAtom.reportWrite(value, super.loading, () {
      super.loading = value;
    });
  }

  final _$fetchWeatherAsyncAction =
      AsyncAction('_HomeControllerBase.fetchWeather');

  @override
  Future<void> fetchWeather() {
    return _$fetchWeatherAsyncAction.run(() => super.fetchWeather());
  }

  final _$_getWeatherForecastAsyncAction =
      AsyncAction('_HomeControllerBase._getWeatherForecast');

  @override
  Future<void> _getWeatherForecast(Coordinates coordinates) {
    return _$_getWeatherForecastAsyncAction
        .run(() => super._getWeatherForecast(coordinates));
  }

  final _$searchWeatherByCityAsyncAction =
      AsyncAction('_HomeControllerBase.searchWeatherByCity');

  @override
  Future<void> searchWeatherByCity(String city) {
    return _$searchWeatherByCityAsyncAction
        .run(() => super.searchWeatherByCity(city));
  }

  final _$_HomeControllerBaseActionController =
      ActionController(name: '_HomeControllerBase');

  @override
  void setLoading(bool value) {
    final _$actionInfo = _$_HomeControllerBaseActionController.startAction(
        name: '_HomeControllerBase.setLoading');
    try {
      return super.setLoading(value);
    } finally {
      _$_HomeControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
currentWeather: ${currentWeather},
weatherForecast: ${weatherForecast},
loading: ${loading}
    ''';
  }
}
