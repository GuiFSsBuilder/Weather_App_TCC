// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather_forecast_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_WeatherForecastModel _$_$_WeatherForecastModelFromJson(
    Map<String, dynamic> json) {
  return _$_WeatherForecastModel(
    lat: (json['lat'] as num).toDouble(),
    lon: (json['lon'] as num).toDouble(),
    timezone: json['timezone'] as String,
    timezone_offset: json['timezone_offset'] as int,
    daily: (json['daily'] as List<dynamic>)
        .map((e) => Daily.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$_$_WeatherForecastModelToJson(
        _$_WeatherForecastModel instance) =>
    <String, dynamic>{
      'lat': instance.lat,
      'lon': instance.lon,
      'timezone': instance.timezone,
      'timezone_offset': instance.timezone_offset,
      'daily': instance.daily,
    };

_$_Rain _$_$_RainFromJson(Map<String, dynamic> json) {
  return _$_Rain(
    the1H: (json['the1H'] as num).toDouble(),
  );
}

Map<String, dynamic> _$_$_RainToJson(_$_Rain instance) => <String, dynamic>{
      'the1H': instance.the1H,
    };

_$_Daily _$_$_DailyFromJson(Map<String, dynamic> json) {
  return _$_Daily(
    dt: json['dt'] as int,
    sunrise: json['sunrise'] as int,
    sunset: json['sunset'] as int,
    moonrise: json['moonrise'] as int,
    moonset: json['moonset'] as int,
    moon_phase: (json['moon_phase'] as num).toDouble(),
    temp: Temp.fromJson(json['temp'] as Map<String, dynamic>),
    feels_like: FeelsLike.fromJson(json['feels_like'] as Map<String, dynamic>),
    pressure: json['pressure'] as int,
    humidity: json['humidity'] as int,
    dew_point: (json['dew_point'] as num).toDouble(),
    wind_speed: (json['wind_speed'] as num).toDouble(),
    wind_deg: json['wind_deg'] as int,
    weather: (json['weather'] as List<dynamic>)
        .map((e) => Weather.fromJson(e as Map<String, dynamic>))
        .toList(),
    clouds: json['clouds'] as int,
    pop: (json['pop'] as num).toDouble(),
    rain: (json['rain'] as num?)?.toDouble(),
    uvi: (json['uvi'] as num).toDouble(),
  );
}

Map<String, dynamic> _$_$_DailyToJson(_$_Daily instance) => <String, dynamic>{
      'dt': instance.dt,
      'sunrise': instance.sunrise,
      'sunset': instance.sunset,
      'moonrise': instance.moonrise,
      'moonset': instance.moonset,
      'moon_phase': instance.moon_phase,
      'temp': instance.temp,
      'feels_like': instance.feels_like,
      'pressure': instance.pressure,
      'humidity': instance.humidity,
      'dew_point': instance.dew_point,
      'wind_speed': instance.wind_speed,
      'wind_deg': instance.wind_deg,
      'weather': instance.weather,
      'clouds': instance.clouds,
      'pop': instance.pop,
      'rain': instance.rain,
      'uvi': instance.uvi,
    };

_$_FeelsLike _$_$_FeelsLikeFromJson(Map<String, dynamic> json) {
  return _$_FeelsLike(
    day: (json['day'] as num).toDouble(),
    night: (json['night'] as num).toDouble(),
    eve: (json['eve'] as num).toDouble(),
    morn: (json['morn'] as num).toDouble(),
  );
}

Map<String, dynamic> _$_$_FeelsLikeToJson(_$_FeelsLike instance) =>
    <String, dynamic>{
      'day': instance.day,
      'night': instance.night,
      'eve': instance.eve,
      'morn': instance.morn,
    };

_$_Temp _$_$_TempFromJson(Map<String, dynamic> json) {
  return _$_Temp(
    day: (json['day'] as num).toDouble(),
    min: (json['min'] as num).toDouble(),
    max: (json['max'] as num).toDouble(),
    night: (json['night'] as num).toDouble(),
    eve: (json['eve'] as num).toDouble(),
    morn: (json['morn'] as num).toDouble(),
  );
}

Map<String, dynamic> _$_$_TempToJson(_$_Temp instance) => <String, dynamic>{
      'day': instance.day,
      'min': instance.min,
      'max': instance.max,
      'night': instance.night,
      'eve': instance.eve,
      'morn': instance.morn,
    };
