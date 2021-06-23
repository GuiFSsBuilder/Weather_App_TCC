import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:weather_app_tcc/utils/types/types.dart';

part 'weather_model.freezed.dart';
part 'weather_model.g.dart';

WeatherModel weatherModelFromJson(String str) =>
    WeatherModel.fromJson(json.decode(str) as Json);

String weatherModelToJson(WeatherModel data) => json.encode(data.toJson());

@freezed
abstract class WeatherModel with _$WeatherModel {
  const factory WeatherModel({
    required Coord coord,
    required List<Weather> weather,
    required String base,
    required Main main,
    required int visibility,
    required Wind wind,
    required Clouds clouds,
    required int dt,
    required Sys sys,
    required int timezone,
    required int id,
    required String name,
    required int cod,
  }) = _WeatherModel;

  factory WeatherModel.fromJson(Map<String, dynamic> json) =>
      _$WeatherModelFromJson(json);
}

@freezed
abstract class Clouds with _$Clouds {
  const factory Clouds({
    required int all,
  }) = _Clouds;

  factory Clouds.fromJson(Map<String, dynamic> json) => _$CloudsFromJson(json);
}

@freezed
abstract class Coord with _$Coord {
  const factory Coord({
    required double lon,
    required double lat,
  }) = _Coord;

  factory Coord.fromJson(Map<String, dynamic> json) => _$CoordFromJson(json);
}

@freezed
abstract class Main with _$Main {
  const factory Main({
    required double temp,
    required double feels_like,
    required double temp_min,
    required double temp_max,
    required int pressure,
    required int humidity,
  }) = _Main;

  factory Main.fromJson(Map<String, dynamic> json) => _$MainFromJson(json);
}

@freezed
abstract class Sys with _$Sys {
  const factory Sys({
    required int type,
    required int id,
    double? message,
    required String country,
    required int sunrise,
    required int sunset,
  }) = _Sys;

  factory Sys.fromJson(Map<String, dynamic> json) => _$SysFromJson(json);
}

@freezed
abstract class Weather with _$Weather {
  const factory Weather({
    required int id,
    required String main,
    required String description,
    required String icon,
  }) = _Weather;

  factory Weather.fromJson(Map<String, dynamic> json) =>
      _$WeatherFromJson(json);
}

@freezed
abstract class Wind with _$Wind {
  const factory Wind({
    required double speed,
    required int deg,
  }) = _Wind;

  factory Wind.fromJson(Map<String, dynamic> json) => _$WindFromJson(json);
}
