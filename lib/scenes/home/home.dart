import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:get/get.dart';
import 'package:weather_app_tcc/widgets/scene_wrapper/scene_wrapper.dart';
import 'package:weather_app_tcc/widgets/widgets.dart';

import 'home_controller.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final HomeController _homeController = Get.find();

  @override
  void initState() {
    super.initState();
    _homeController.fetchWeatherList();
  }

  @override
  Widget build(BuildContext context) {
    return SceneWrapper(
      showSettingsIcon: true,
      scrollable: false,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Observer(
            builder: (_) {
              if (_homeController.weatherList.isNotEmpty) {
                final userLocationWeather = _homeController.weatherList.first;
                return WeatherCard(weatherData: userLocationWeather);
              }
              return Container();
            },
          ),
          Observer(builder: (_) {
            final weatherForecast = _homeController.weatherForecast;
            if (weatherForecast != null) {
              return WeatherWeekCard(
                weatherForecast: weatherForecast,
              );
            }
            return Container();
          }),
        ],
      ),
    );
  }
}
