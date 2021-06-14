import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:weather_app_tcc/utils/enums/enums.dart';

class WeatherDayColumn extends StatelessWidget {
  final String weekDay;
  final double temp;
  final WeatherType weatherType;

  const WeatherDayColumn({
    Key? key,
    required this.weekDay,
    required this.temp,
    required this.weatherType,
  }) : super(key: key);

  String get _assetName {
    String type = '';
    switch (weatherType) {
      case WeatherType.SUNNY:
        type = 'sunny';
        break;
      case WeatherType.CLOUDY:
        type = 'sunny_storm';
        break;
      case WeatherType.CLEAR:
        type = 'sunny_cloud';
        break;
      default:
        type = 'sunny';
    }
    return 'assets/svgs/weather_$type.svg';
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          weekDay,
          style: TextStyle(
            color: theme.primaryColor,
            fontSize: 17,
          ),
        ),
        Text(
          '$tempº',
          style: const TextStyle(
            fontSize: 17,
          ),
        ),
        SvgPicture.asset(
          _assetName,
        )
      ],
    );
  }
}
