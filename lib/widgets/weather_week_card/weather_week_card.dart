import 'package:flutter/material.dart';
import 'package:weather_app_tcc/utils/enums/enums.dart';
import 'weather_day_column.dart';

class WeatherWeekCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 10,
        vertical: 15,
      ),
      decoration: BoxDecoration(
        color: Colors.black.withOpacity(0.4),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: const [
          WeatherDayColumn(
            weekDay: 'Seg',
            temp: 25,
            weatherType: WeatherType.SUNNY,
          ),
          WeatherDayColumn(
            weekDay: 'Ter',
            temp: 25,
            weatherType: WeatherType.SUNNY,
          ),
          WeatherDayColumn(
            weekDay: 'Qua',
            temp: 25,
            weatherType: WeatherType.SUNNY,
          ),
          WeatherDayColumn(
            weekDay: 'Qui',
            temp: 25,
            weatherType: WeatherType.SUNNY,
          ),
          WeatherDayColumn(
            weekDay: 'Sex',
            temp: 25,
            weatherType: WeatherType.SUNNY,
          ),
          WeatherDayColumn(
            weekDay: 'Sab',
            temp: 25,
            weatherType: WeatherType.SUNNY,
          ),
          WeatherDayColumn(
            weekDay: 'Dom',
            temp: 25,
            weatherType: WeatherType.SUNNY,
          ),
        ],
      ),
    );
  }
}
