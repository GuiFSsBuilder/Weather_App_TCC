import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:weather_app_tcc/utils/entities/entities.dart';
import 'package:weather_app_tcc/utils/types/types.dart';

part 'weather_forecast_model.freezed.dart';
part 'weather_forecast_model.g.dart';

WeatherForecastModel weatherForecastModelFromJson(String str) =>
    WeatherForecastModel.fromJson(json.decode(str) as Json);

String weatherForecastModelToJson(WeatherForecastModel data) =>
    json.encode(data.toJson());

@freezed
abstract class WeatherForecastModel with _$WeatherForecastModel {
  const factory WeatherForecastModel({
    required double lat,
    required double lon,
    required String timezone,
    required int timezone_offset,
    required List<Daily> daily,
  }) = _WeatherForecastModel;

  factory WeatherForecastModel.fromJson(Map<String, dynamic> json) =>
      _$WeatherForecastModelFromJson(json);
}

@freezed
abstract class Rain with _$Rain {
  const factory Rain({
    required double the1H,
  }) = _Rain;

  factory Rain.fromJson(Map<String, dynamic> json) => _$RainFromJson(json);
}

@freezed
abstract class Daily with _$Daily {
  const factory Daily({
    required int dt,
    required int sunrise,
    required int sunset,
    required int moonrise,
    required int moonset,
    required double moon_phase,
    required Temp temp,
    required FeelsLike feels_like,
    required int pressure,
    required int humidity,
    required double dew_point,
    required double wind_speed,
    required int wind_deg,
    required List<Weather> weather,
    required int clouds,
    required double pop,
    double? rain,
    required double uvi,
  }) = _Daily;

  factory Daily.fromJson(Map<String, dynamic> json) => _$DailyFromJson(json);
}

@freezed
abstract class FeelsLike with _$FeelsLike {
  const factory FeelsLike({
    required double day,
    required double night,
    required double eve,
    required double morn,
  }) = _FeelsLike;

  factory FeelsLike.fromJson(Map<String, dynamic> json) =>
      _$FeelsLikeFromJson(json);
}

@freezed
abstract class Temp with _$Temp {
  const factory Temp({
    required double day,
    required double min,
    required double max,
    required double night,
    required double eve,
    required double morn,
  }) = _Temp;

  factory Temp.fromJson(Map<String, dynamic> json) => _$TempFromJson(json);
}
