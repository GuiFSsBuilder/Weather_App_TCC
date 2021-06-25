// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$HomeController on _HomeControllerBase, Store {
  final _$weatherListAtom = Atom(name: '_HomeControllerBase.weatherList');

  @override
  List<WeatherModel> get weatherList {
    _$weatherListAtom.reportRead();
    return super.weatherList;
  }

  @override
  set weatherList(List<WeatherModel> value) {
    _$weatherListAtom.reportWrite(value, super.weatherList, () {
      super.weatherList = value;
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

  final _$errorMessageAtom = Atom(name: '_HomeControllerBase.errorMessage');

  @override
  String get errorMessage {
    _$errorMessageAtom.reportRead();
    return super.errorMessage;
  }

  @override
  set errorMessage(String value) {
    _$errorMessageAtom.reportWrite(value, super.errorMessage, () {
      super.errorMessage = value;
    });
  }

  final _$fetchWeatherListAsyncAction =
      AsyncAction('_HomeControllerBase.fetchWeatherList');

  @override
  Future<void> fetchWeatherList() {
    return _$fetchWeatherListAsyncAction.run(() => super.fetchWeatherList());
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
weatherList: ${weatherList},
weatherForecast: ${weatherForecast},
loading: ${loading},
errorMessage: ${errorMessage}
    ''';
  }
}
