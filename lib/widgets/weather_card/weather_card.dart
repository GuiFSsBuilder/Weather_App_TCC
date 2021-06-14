import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:weather_app_tcc/navigation/navigation.dart';
import 'package:weather_app_tcc/utils/enums/enums.dart';

class WeatherCard extends StatelessWidget {
  final WeatherType weatherType;

  const WeatherCard({
    Key? key,
    required this.weatherType,
  }) : super(key: key);

  String get _assetName {
    String typeName = '';
    switch (weatherType) {
      case WeatherType.CLEAR:
        typeName = 'clear';
        break;
      case WeatherType.CLOUDY:
        typeName = 'cloudy';
        break;
      case WeatherType.RAINING:
        typeName = 'raining';
        break;
      case WeatherType.SUNNY:
        typeName = 'sunny';
        break;
      default:
        typeName = 'clear';
    }
    return 'assets/images/weather_$typeName.png';
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
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
                      'São Paulo',
                      style: theme.textTheme.headline2,
                    ),
                    const SizedBox(height: 5),
                    const Text('Seg. 31 de maio 2021'),
                    const SizedBox(height: 10),
                    Text(
                      '26º',
                      style: theme.textTheme.headline1,
                    ),
                  ],
                ),
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: const [
                        Text('Min: 24º'),
                        Text('Max: 27º'),
                      ],
                    ),
                    const SizedBox(height: 5),
                    const Text('Sensação térmica: 24º'),
                  ],
                ),
              ],
            ),
          ),
          Positioned(
            bottom: -25,
            left: 0,
            right: 0,
            child: FloatingActionButton(
              onPressed: () => Get.toNamed(Routes.SEARCH_CITY),
              backgroundColor: Colors.white,
              child: const Icon(
                Icons.add,
                color: Colors.black,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
