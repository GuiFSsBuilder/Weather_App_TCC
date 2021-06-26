import 'package:flutter/material.dart';

class WeatherDayColumn extends StatelessWidget {
  final String weekDay;
  final double temp;
  final String iconName;

  const WeatherDayColumn({
    Key? key,
    required this.weekDay,
    required this.temp,
    required this.iconName,
  }) : super(key: key);

  String get _iconSrc {
    return 'http://openweathermap.org/img/wn/$iconName@2x.png';
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Column(
      children: [
        Text(
          weekDay,
          style: TextStyle(
            color: theme.primaryColor,
            fontSize: 17,
          ),
        ),
        Text(
          '${temp.toStringAsFixed(0)}º',
          style: const TextStyle(
            fontSize: 17,
          ),
        ),
        Image.network(
          _iconSrc,
          width: 32,
          height: 32,
        )
      ],
    );
  }
}
