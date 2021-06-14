import 'package:flutter/material.dart';
import 'package:weather_app_tcc/utils/enums/enums.dart';
import 'package:weather_app_tcc/widgets/scene_wrapper/scene_wrapper.dart';
import 'package:weather_app_tcc/widgets/widgets.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SceneWrapper(
      showSettingsIcon: true,
      scrollable: false,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          const WeatherCard(
            weatherType: WeatherType.CLEAR,
          ),
          WeatherWeekCard(),
        ],
      ),
    );
  }
}
