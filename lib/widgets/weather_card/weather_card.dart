import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:weather_app_tcc/utils/entities/entities.dart';
import 'package:weather_app_tcc/utils/extensions/extensions.dart';

class WeatherCard extends StatelessWidget {
  final WeatherModel weatherData;
  final df1 = DateFormat.E();
  final df2 = DateFormat.yMMMMd();
  // sab. 31 de maio de 2021

  WeatherCard({
    Key? key,
    required this.weatherData,
  }) : super(key: key);

  String get _assetName {
    // TODO: change types later
    const typeName = 'clear';
    final weatherType = weatherData.weather[0].main;

    switch (weatherType) {
      // case WeatherType.CLEAR:
      //   typeName = 'clear';
      //   break;
      // case WeatherType.CLOUDY:
      //   typeName = 'cloudy';
      //   break;
      // case WeatherType.RAINING:
      //   typeName = 'raining';
      //   break;
      // case WeatherType.SUNNY:
      //   typeName = 'sunny';
      //   break;
      // default:
      //   typeName = 'clear';
    }
    return 'assets/images/weather_$typeName.png';
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final date = '${df1.format(DateTime.now())}, ${df2.format(DateTime.now())}';
    return Container(
      width: 284,
      height: 431,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(_assetName),
          fit: BoxFit.fill,
        ),
      ),
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Container(
            decoration: BoxDecoration(
              color: Colors.black.withOpacity(0.4),
              borderRadius: BorderRadius.circular(34),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 40,
              horizontal: 20,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Text(
                      weatherData.name,
                      style: theme.textTheme.headline2,
                    ),
                    const SizedBox(height: 5),
                    Text(date.captalize()),
                    const SizedBox(height: 10),
                    Text(
                      '${weatherData.main.temp.toStringAsFixed(0)}º',
                      style: theme.textTheme.headline1,
                    ),
                  ],
                ),
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                            'Min: ${weatherData.main.temp_min.toStringAsFixed(0)}º'),
                        Text(
                            'Max: ${weatherData.main.temp_max.toStringAsFixed(0)}º'),
                      ],
                    ),
                    const SizedBox(height: 5),
                    Text(
                        'Sensação térmica: ${weatherData.main.feels_like.toStringAsFixed(0)}º'),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
