import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:weather_app_tcc/utils/entities/entities.dart';
import 'package:weather_app_tcc/utils/extensions/extensions.dart';

import 'weather_day_column.dart';

class WeatherWeekCard extends StatelessWidget {
  final WeatherForecastModel weatherForecast;
  final df = DateFormat.E();

  WeatherWeekCard({
    Key? key,
    required this.weatherForecast,
  }) : super(key: key);

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
          children: weatherForecast.daily.map((dailyWeather) {
            final tempMean =
                (dailyWeather.temp.min + dailyWeather.temp.max) / 2.0;

            final weekDay = df.format(
                DateTime.fromMillisecondsSinceEpoch(dailyWeather.dt * 1000));

            final iconName = dailyWeather.weather.first.icon;

            return WeatherDayColumn(
              weekDay: weekDay.captalize(),
              temp: tempMean,
              iconName: iconName,
            );
          }).toList()),
    );
  }
}
