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
  final HomeController controller = Get.find();

  @override
  void initState() {
    super.initState();
    controller.fetchWeather();
  }

  @override
  Widget build(BuildContext context) {
    return Observer(
      builder: (_) {
        final userLocationWeather = controller.currentWeather;
        final weatherForecast = controller.weatherForecast;

        return SceneWrapper(
          onSearchSubmitted: controller.searchWeatherByCity,
          scrollable: false,
          child: controller.loading
              ? const Center(child: Loader())
              : Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    if (userLocationWeather != null)
                      WeatherCard(weatherData: userLocationWeather)
                    else
                      Container(),
                    if (weatherForecast != null)
                      WeatherWeekCard(
                        weatherForecast: weatherForecast,
                      )
                    else
                      Container()
                  ],
                ),
        );
      },
    );
  }
}
