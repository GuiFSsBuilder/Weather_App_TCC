// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'weather_forecast_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

WeatherForecastModel _$WeatherForecastModelFromJson(Map<String, dynamic> json) {
  return _WeatherForecastModel.fromJson(json);
}

/// @nodoc
class _$WeatherForecastModelTearOff {
  const _$WeatherForecastModelTearOff();

  _WeatherForecastModel call(
      {required double lat,
      required double lon,
      required String timezone,
      required int timezone_offset,
      required List<Daily> daily}) {
    return _WeatherForecastModel(
      lat: lat,
      lon: lon,
      timezone: timezone,
      timezone_offset: timezone_offset,
      daily: daily,
    );
  }

  WeatherForecastModel fromJson(Map<String, Object> json) {
    return WeatherForecastModel.fromJson(json);
  }
}

/// @nodoc
const $WeatherForecastModel = _$WeatherForecastModelTearOff();

/// @nodoc
mixin _$WeatherForecastModel {
  double get lat => throw _privateConstructorUsedError;
  double get lon => throw _privateConstructorUsedError;
  String get timezone => throw _privateConstructorUsedError;
  int get timezone_offset => throw _privateConstructorUsedError;
  List<Daily> get daily => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WeatherForecastModelCopyWith<WeatherForecastModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeatherForecastModelCopyWith<$Res> {
  factory $WeatherForecastModelCopyWith(WeatherForecastModel value,
          $Res Function(WeatherForecastModel) then) =
      _$WeatherForecastModelCopyWithImpl<$Res>;
  $Res call(
      {double lat,
      double lon,
      String timezone,
      int timezone_offset,
      List<Daily> daily});
}

/// @nodoc
class _$WeatherForecastModelCopyWithImpl<$Res>
    implements $WeatherForecastModelCopyWith<$Res> {
  _$WeatherForecastModelCopyWithImpl(this._value, this._then);

  final WeatherForecastModel _value;
  // ignore: unused_field
  final $Res Function(WeatherForecastModel) _then;

  @override
  $Res call({
    Object? lat = freezed,
    Object? lon = freezed,
    Object? timezone = freezed,
    Object? timezone_offset = freezed,
    Object? daily = freezed,
  }) {
    return _then(_value.copyWith(
      lat: lat == freezed
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as double,
      lon: lon == freezed
          ? _value.lon
          : lon // ignore: cast_nullable_to_non_nullable
              as double,
      timezone: timezone == freezed
          ? _value.timezone
          : timezone // ignore: cast_nullable_to_non_nullable
              as String,
      timezone_offset: timezone_offset == freezed
          ? _value.timezone_offset
          : timezone_offset // ignore: cast_nullable_to_non_nullable
              as int,
      daily: daily == freezed
          ? _value.daily
          : daily // ignore: cast_nullable_to_non_nullable
              as List<Daily>,
    ));
  }
}

/// @nodoc
abstract class _$WeatherForecastModelCopyWith<$Res>
    implements $WeatherForecastModelCopyWith<$Res> {
  factory _$WeatherForecastModelCopyWith(_WeatherForecastModel value,
          $Res Function(_WeatherForecastModel) then) =
      __$WeatherForecastModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {double lat,
      double lon,
      String timezone,
      int timezone_offset,
      List<Daily> daily});
}

/// @nodoc
class __$WeatherForecastModelCopyWithImpl<$Res>
    extends _$WeatherForecastModelCopyWithImpl<$Res>
    implements _$WeatherForecastModelCopyWith<$Res> {
  __$WeatherForecastModelCopyWithImpl(
      _WeatherForecastModel _value, $Res Function(_WeatherForecastModel) _then)
      : super(_value, (v) => _then(v as _WeatherForecastModel));

  @override
  _WeatherForecastModel get _value => super._value as _WeatherForecastModel;

  @override
  $Res call({
    Object? lat = freezed,
    Object? lon = freezed,
    Object? timezone = freezed,
    Object? timezone_offset = freezed,
    Object? daily = freezed,
  }) {
    return _then(_WeatherForecastModel(
      lat: lat == freezed
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as double,
      lon: lon == freezed
          ? _value.lon
          : lon // ignore: cast_nullable_to_non_nullable
              as double,
      timezone: timezone == freezed
          ? _value.timezone
          : timezone // ignore: cast_nullable_to_non_nullable
              as String,
      timezone_offset: timezone_offset == freezed
          ? _value.timezone_offset
          : timezone_offset // ignore: cast_nullable_to_non_nullable
              as int,
      daily: daily == freezed
          ? _value.daily
          : daily // ignore: cast_nullable_to_non_nullable
              as List<Daily>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_WeatherForecastModel implements _WeatherForecastModel {
  const _$_WeatherForecastModel(
      {required this.lat,
      required this.lon,
      required this.timezone,
      required this.timezone_offset,
      required this.daily});

  factory _$_WeatherForecastModel.fromJson(Map<String, dynamic> json) =>
      _$_$_WeatherForecastModelFromJson(json);

  @override
  final double lat;
  @override
  final double lon;
  @override
  final String timezone;
  @override
  final int timezone_offset;
  @override
  final List<Daily> daily;

  @override
  String toString() {
    return 'WeatherForecastModel(lat: $lat, lon: $lon, timezone: $timezone, timezone_offset: $timezone_offset, daily: $daily)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _WeatherForecastModel &&
            (identical(other.lat, lat) ||
                const DeepCollectionEquality().equals(other.lat, lat)) &&
            (identical(other.lon, lon) ||
                const DeepCollectionEquality().equals(other.lon, lon)) &&
            (identical(other.timezone, timezone) ||
                const DeepCollectionEquality()
                    .equals(other.timezone, timezone)) &&
            (identical(other.timezone_offset, timezone_offset) ||
                const DeepCollectionEquality()
                    .equals(other.timezone_offset, timezone_offset)) &&
            (identical(other.daily, daily) ||
                const DeepCollectionEquality().equals(other.daily, daily)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(lat) ^
      const DeepCollectionEquality().hash(lon) ^
      const DeepCollectionEquality().hash(timezone) ^
      const DeepCollectionEquality().hash(timezone_offset) ^
      const DeepCollectionEquality().hash(daily);

  @JsonKey(ignore: true)
  @override
  _$WeatherForecastModelCopyWith<_WeatherForecastModel> get copyWith =>
      __$WeatherForecastModelCopyWithImpl<_WeatherForecastModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_WeatherForecastModelToJson(this);
  }
}

abstract class _WeatherForecastModel implements WeatherForecastModel {
  const factory _WeatherForecastModel(
      {required double lat,
      required double lon,
      required String timezone,
      required int timezone_offset,
      required List<Daily> daily}) = _$_WeatherForecastModel;

  factory _WeatherForecastModel.fromJson(Map<String, dynamic> json) =
      _$_WeatherForecastModel.fromJson;

  @override
  double get lat => throw _privateConstructorUsedError;
  @override
  double get lon => throw _privateConstructorUsedError;
  @override
  String get timezone => throw _privateConstructorUsedError;
  @override
  int get timezone_offset => throw _privateConstructorUsedError;
  @override
  List<Daily> get daily => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$WeatherForecastModelCopyWith<_WeatherForecastModel> get copyWith =>
      throw _privateConstructorUsedError;
}

Rain _$RainFromJson(Map<String, dynamic> json) {
  return _Rain.fromJson(json);
}

/// @nodoc
class _$RainTearOff {
  const _$RainTearOff();

  _Rain call({required double the1H}) {
    return _Rain(
      the1H: the1H,
    );
  }

  Rain fromJson(Map<String, Object> json) {
    return Rain.fromJson(json);
  }
}

/// @nodoc
const $Rain = _$RainTearOff();

/// @nodoc
mixin _$Rain {
  double get the1H => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RainCopyWith<Rain> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RainCopyWith<$Res> {
  factory $RainCopyWith(Rain value, $Res Function(Rain) then) =
      _$RainCopyWithImpl<$Res>;
  $Res call({double the1H});
}

/// @nodoc
class _$RainCopyWithImpl<$Res> implements $RainCopyWith<$Res> {
  _$RainCopyWithImpl(this._value, this._then);

  final Rain _value;
  // ignore: unused_field
  final $Res Function(Rain) _then;

  @override
  $Res call({
    Object? the1H = freezed,
  }) {
    return _then(_value.copyWith(
      the1H: the1H == freezed
          ? _value.the1H
          : the1H // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
abstract class _$RainCopyWith<$Res> implements $RainCopyWith<$Res> {
  factory _$RainCopyWith(_Rain value, $Res Function(_Rain) then) =
      __$RainCopyWithImpl<$Res>;
  @override
  $Res call({double the1H});
}

/// @nodoc
class __$RainCopyWithImpl<$Res> extends _$RainCopyWithImpl<$Res>
    implements _$RainCopyWith<$Res> {
  __$RainCopyWithImpl(_Rain _value, $Res Function(_Rain) _then)
      : super(_value, (v) => _then(v as _Rain));

  @override
  _Rain get _value => super._value as _Rain;

  @override
  $Res call({
    Object? the1H = freezed,
  }) {
    return _then(_Rain(
      the1H: the1H == freezed
          ? _value.the1H
          : the1H // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Rain implements _Rain {
  const _$_Rain({required this.the1H});

  factory _$_Rain.fromJson(Map<String, dynamic> json) =>
      _$_$_RainFromJson(json);

  @override
  final double the1H;

  @override
  String toString() {
    return 'Rain(the1H: $the1H)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Rain &&
            (identical(other.the1H, the1H) ||
                const DeepCollectionEquality().equals(other.the1H, the1H)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(the1H);

  @JsonKey(ignore: true)
  @override
  _$RainCopyWith<_Rain> get copyWith =>
      __$RainCopyWithImpl<_Rain>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_RainToJson(this);
  }
}

abstract class _Rain implements Rain {
  const factory _Rain({required double the1H}) = _$_Rain;

  factory _Rain.fromJson(Map<String, dynamic> json) = _$_Rain.fromJson;

  @override
  double get the1H => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$RainCopyWith<_Rain> get copyWith => throw _privateConstructorUsedError;
}

Daily _$DailyFromJson(Map<String, dynamic> json) {
  return _Daily.fromJson(json);
}

/// @nodoc
class _$DailyTearOff {
  const _$DailyTearOff();

  _Daily call(
      {required int dt,
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
      required double uvi}) {
    return _Daily(
      dt: dt,
      sunrise: sunrise,
      sunset: sunset,
      moonrise: moonrise,
      moonset: moonset,
      moon_phase: moon_phase,
      temp: temp,
      feels_like: feels_like,
      pressure: pressure,
      humidity: humidity,
      dew_point: dew_point,
      wind_speed: wind_speed,
      wind_deg: wind_deg,
      weather: weather,
      clouds: clouds,
      pop: pop,
      rain: rain,
      uvi: uvi,
    );
  }

  Daily fromJson(Map<String, Object> json) {
    return Daily.fromJson(json);
  }
}

/// @nodoc
const $Daily = _$DailyTearOff();

/// @nodoc
mixin _$Daily {
  int get dt => throw _privateConstructorUsedError;
  int get sunrise => throw _privateConstructorUsedError;
  int get sunset => throw _privateConstructorUsedError;
  int get moonrise => throw _privateConstructorUsedError;
  int get moonset => throw _privateConstructorUsedError;
  double get moon_phase => throw _privateConstructorUsedError;
  Temp get temp => throw _privateConstructorUsedError;
  FeelsLike get feels_like => throw _privateConstructorUsedError;
  int get pressure => throw _privateConstructorUsedError;
  int get humidity => throw _privateConstructorUsedError;
  double get dew_point => throw _privateConstructorUsedError;
  double get wind_speed => throw _privateConstructorUsedError;
  int get wind_deg => throw _privateConstructorUsedError;
  List<Weather> get weather => throw _privateConstructorUsedError;
  int get clouds => throw _privateConstructorUsedError;
  double get pop => throw _privateConstructorUsedError;
  double? get rain => throw _privateConstructorUsedError;
  double get uvi => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DailyCopyWith<Daily> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DailyCopyWith<$Res> {
  factory $DailyCopyWith(Daily value, $Res Function(Daily) then) =
      _$DailyCopyWithImpl<$Res>;
  $Res call(
      {int dt,
      int sunrise,
      int sunset,
      int moonrise,
      int moonset,
      double moon_phase,
      Temp temp,
      FeelsLike feels_like,
      int pressure,
      int humidity,
      double dew_point,
      double wind_speed,
      int wind_deg,
      List<Weather> weather,
      int clouds,
      double pop,
      double? rain,
      double uvi});

  $TempCopyWith<$Res> get temp;
  $FeelsLikeCopyWith<$Res> get feels_like;
}

/// @nodoc
class _$DailyCopyWithImpl<$Res> implements $DailyCopyWith<$Res> {
  _$DailyCopyWithImpl(this._value, this._then);

  final Daily _value;
  // ignore: unused_field
  final $Res Function(Daily) _then;

  @override
  $Res call({
    Object? dt = freezed,
    Object? sunrise = freezed,
    Object? sunset = freezed,
    Object? moonrise = freezed,
    Object? moonset = freezed,
    Object? moon_phase = freezed,
    Object? temp = freezed,
    Object? feels_like = freezed,
    Object? pressure = freezed,
    Object? humidity = freezed,
    Object? dew_point = freezed,
    Object? wind_speed = freezed,
    Object? wind_deg = freezed,
    Object? weather = freezed,
    Object? clouds = freezed,
    Object? pop = freezed,
    Object? rain = freezed,
    Object? uvi = freezed,
  }) {
    return _then(_value.copyWith(
      dt: dt == freezed
          ? _value.dt
          : dt // ignore: cast_nullable_to_non_nullable
              as int,
      sunrise: sunrise == freezed
          ? _value.sunrise
          : sunrise // ignore: cast_nullable_to_non_nullable
              as int,
      sunset: sunset == freezed
          ? _value.sunset
          : sunset // ignore: cast_nullable_to_non_nullable
              as int,
      moonrise: moonrise == freezed
          ? _value.moonrise
          : moonrise // ignore: cast_nullable_to_non_nullable
              as int,
      moonset: moonset == freezed
          ? _value.moonset
          : moonset // ignore: cast_nullable_to_non_nullable
              as int,
      moon_phase: moon_phase == freezed
          ? _value.moon_phase
          : moon_phase // ignore: cast_nullable_to_non_nullable
              as double,
      temp: temp == freezed
          ? _value.temp
          : temp // ignore: cast_nullable_to_non_nullable
              as Temp,
      feels_like: feels_like == freezed
          ? _value.feels_like
          : feels_like // ignore: cast_nullable_to_non_nullable
              as FeelsLike,
      pressure: pressure == freezed
          ? _value.pressure
          : pressure // ignore: cast_nullable_to_non_nullable
              as int,
      humidity: humidity == freezed
          ? _value.humidity
          : humidity // ignore: cast_nullable_to_non_nullable
              as int,
      dew_point: dew_point == freezed
          ? _value.dew_point
          : dew_point // ignore: cast_nullable_to_non_nullable
              as double,
      wind_speed: wind_speed == freezed
          ? _value.wind_speed
          : wind_speed // ignore: cast_nullable_to_non_nullable
              as double,
      wind_deg: wind_deg == freezed
          ? _value.wind_deg
          : wind_deg // ignore: cast_nullable_to_non_nullable
              as int,
      weather: weather == freezed
          ? _value.weather
          : weather // ignore: cast_nullable_to_non_nullable
              as List<Weather>,
      clouds: clouds == freezed
          ? _value.clouds
          : clouds // ignore: cast_nullable_to_non_nullable
              as int,
      pop: pop == freezed
          ? _value.pop
          : pop // ignore: cast_nullable_to_non_nullable
              as double,
      rain: rain == freezed
          ? _value.rain
          : rain // ignore: cast_nullable_to_non_nullable
              as double?,
      uvi: uvi == freezed
          ? _value.uvi
          : uvi // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }

  @override
  $TempCopyWith<$Res> get temp {
    return $TempCopyWith<$Res>(_value.temp, (value) {
      return _then(_value.copyWith(temp: value));
    });
  }

  @override
  $FeelsLikeCopyWith<$Res> get feels_like {
    return $FeelsLikeCopyWith<$Res>(_value.feels_like, (value) {
      return _then(_value.copyWith(feels_like: value));
    });
  }
}

/// @nodoc
abstract class _$DailyCopyWith<$Res> implements $DailyCopyWith<$Res> {
  factory _$DailyCopyWith(_Daily value, $Res Function(_Daily) then) =
      __$DailyCopyWithImpl<$Res>;
  @override
  $Res call(
      {int dt,
      int sunrise,
      int sunset,
      int moonrise,
      int moonset,
      double moon_phase,
      Temp temp,
      FeelsLike feels_like,
      int pressure,
      int humidity,
      double dew_point,
      double wind_speed,
      int wind_deg,
      List<Weather> weather,
      int clouds,
      double pop,
      double? rain,
      double uvi});

  @override
  $TempCopyWith<$Res> get temp;
  @override
  $FeelsLikeCopyWith<$Res> get feels_like;
}

/// @nodoc
class __$DailyCopyWithImpl<$Res> extends _$DailyCopyWithImpl<$Res>
    implements _$DailyCopyWith<$Res> {
  __$DailyCopyWithImpl(_Daily _value, $Res Function(_Daily) _then)
      : super(_value, (v) => _then(v as _Daily));

  @override
  _Daily get _value => super._value as _Daily;

  @override
  $Res call({
    Object? dt = freezed,
    Object? sunrise = freezed,
    Object? sunset = freezed,
    Object? moonrise = freezed,
    Object? moonset = freezed,
    Object? moon_phase = freezed,
    Object? temp = freezed,
    Object? feels_like = freezed,
    Object? pressure = freezed,
    Object? humidity = freezed,
    Object? dew_point = freezed,
    Object? wind_speed = freezed,
    Object? wind_deg = freezed,
    Object? weather = freezed,
    Object? clouds = freezed,
    Object? pop = freezed,
    Object? rain = freezed,
    Object? uvi = freezed,
  }) {
    return _then(_Daily(
      dt: dt == freezed
          ? _value.dt
          : dt // ignore: cast_nullable_to_non_nullable
              as int,
      sunrise: sunrise == freezed
          ? _value.sunrise
          : sunrise // ignore: cast_nullable_to_non_nullable
              as int,
      sunset: sunset == freezed
          ? _value.sunset
          : sunset // ignore: cast_nullable_to_non_nullable
              as int,
      moonrise: moonrise == freezed
          ? _value.moonrise
          : moonrise // ignore: cast_nullable_to_non_nullable
              as int,
      moonset: moonset == freezed
          ? _value.moonset
          : moonset // ignore: cast_nullable_to_non_nullable
              as int,
      moon_phase: moon_phase == freezed
          ? _value.moon_phase
          : moon_phase // ignore: cast_nullable_to_non_nullable
              as double,
      temp: temp == freezed
          ? _value.temp
          : temp // ignore: cast_nullable_to_non_nullable
              as Temp,
      feels_like: feels_like == freezed
          ? _value.feels_like
          : feels_like // ignore: cast_nullable_to_non_nullable
              as FeelsLike,
      pressure: pressure == freezed
          ? _value.pressure
          : pressure // ignore: cast_nullable_to_non_nullable
              as int,
      humidity: humidity == freezed
          ? _value.humidity
          : humidity // ignore: cast_nullable_to_non_nullable
              as int,
      dew_point: dew_point == freezed
          ? _value.dew_point
          : dew_point // ignore: cast_nullable_to_non_nullable
              as double,
      wind_speed: wind_speed == freezed
          ? _value.wind_speed
          : wind_speed // ignore: cast_nullable_to_non_nullable
              as double,
      wind_deg: wind_deg == freezed
          ? _value.wind_deg
          : wind_deg // ignore: cast_nullable_to_non_nullable
              as int,
      weather: weather == freezed
          ? _value.weather
          : weather // ignore: cast_nullable_to_non_nullable
              as List<Weather>,
      clouds: clouds == freezed
          ? _value.clouds
          : clouds // ignore: cast_nullable_to_non_nullable
              as int,
      pop: pop == freezed
          ? _value.pop
          : pop // ignore: cast_nullable_to_non_nullable
              as double,
      rain: rain == freezed
          ? _value.rain
          : rain // ignore: cast_nullable_to_non_nullable
              as double?,
      uvi: uvi == freezed
          ? _value.uvi
          : uvi // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Daily implements _Daily {
  const _$_Daily(
      {required this.dt,
      required this.sunrise,
      required this.sunset,
      required this.moonrise,
      required this.moonset,
      required this.moon_phase,
      required this.temp,
      required this.feels_like,
      required this.pressure,
      required this.humidity,
      required this.dew_point,
      required this.wind_speed,
      required this.wind_deg,
      required this.weather,
      required this.clouds,
      required this.pop,
      this.rain,
      required this.uvi});

  factory _$_Daily.fromJson(Map<String, dynamic> json) =>
      _$_$_DailyFromJson(json);

  @override
  final int dt;
  @override
  final int sunrise;
  @override
  final int sunset;
  @override
  final int moonrise;
  @override
  final int moonset;
  @override
  final double moon_phase;
  @override
  final Temp temp;
  @override
  final FeelsLike feels_like;
  @override
  final int pressure;
  @override
  final int humidity;
  @override
  final double dew_point;
  @override
  final double wind_speed;
  @override
  final int wind_deg;
  @override
  final List<Weather> weather;
  @override
  final int clouds;
  @override
  final double pop;
  @override
  final double? rain;
  @override
  final double uvi;

  @override
  String toString() {
    return 'Daily(dt: $dt, sunrise: $sunrise, sunset: $sunset, moonrise: $moonrise, moonset: $moonset, moon_phase: $moon_phase, temp: $temp, feels_like: $feels_like, pressure: $pressure, humidity: $humidity, dew_point: $dew_point, wind_speed: $wind_speed, wind_deg: $wind_deg, weather: $weather, clouds: $clouds, pop: $pop, rain: $rain, uvi: $uvi)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Daily &&
            (identical(other.dt, dt) ||
                const DeepCollectionEquality().equals(other.dt, dt)) &&
            (identical(other.sunrise, sunrise) ||
                const DeepCollectionEquality()
                    .equals(other.sunrise, sunrise)) &&
            (identical(other.sunset, sunset) ||
                const DeepCollectionEquality().equals(other.sunset, sunset)) &&
            (identical(other.moonrise, moonrise) ||
                const DeepCollectionEquality()
                    .equals(other.moonrise, moonrise)) &&
            (identical(other.moonset, moonset) ||
                const DeepCollectionEquality()
                    .equals(other.moonset, moonset)) &&
            (identical(other.moon_phase, moon_phase) ||
                const DeepCollectionEquality()
                    .equals(other.moon_phase, moon_phase)) &&
            (identical(other.temp, temp) ||
                const DeepCollectionEquality().equals(other.temp, temp)) &&
            (identical(other.feels_like, feels_like) ||
                const DeepCollectionEquality()
                    .equals(other.feels_like, feels_like)) &&
            (identical(other.pressure, pressure) ||
                const DeepCollectionEquality()
                    .equals(other.pressure, pressure)) &&
            (identical(other.humidity, humidity) ||
                const DeepCollectionEquality()
                    .equals(other.humidity, humidity)) &&
            (identical(other.dew_point, dew_point) ||
                const DeepCollectionEquality()
                    .equals(other.dew_point, dew_point)) &&
            (identical(other.wind_speed, wind_speed) ||
                const DeepCollectionEquality()
                    .equals(other.wind_speed, wind_speed)) &&
            (identical(other.wind_deg, wind_deg) ||
                const DeepCollectionEquality()
                    .equals(other.wind_deg, wind_deg)) &&
            (identical(other.weather, weather) ||
                const DeepCollectionEquality()
                    .equals(other.weather, weather)) &&
            (identical(other.clouds, clouds) ||
                const DeepCollectionEquality().equals(other.clouds, clouds)) &&
            (identical(other.pop, pop) ||
                const DeepCollectionEquality().equals(other.pop, pop)) &&
            (identical(other.rain, rain) ||
                const DeepCollectionEquality().equals(other.rain, rain)) &&
            (identical(other.uvi, uvi) ||
                const DeepCollectionEquality().equals(other.uvi, uvi)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(dt) ^
      const DeepCollectionEquality().hash(sunrise) ^
      const DeepCollectionEquality().hash(sunset) ^
      const DeepCollectionEquality().hash(moonrise) ^
      const DeepCollectionEquality().hash(moonset) ^
      const DeepCollectionEquality().hash(moon_phase) ^
      const DeepCollectionEquality().hash(temp) ^
      const DeepCollectionEquality().hash(feels_like) ^
      const DeepCollectionEquality().hash(pressure) ^
      const DeepCollectionEquality().hash(humidity) ^
      const DeepCollectionEquality().hash(dew_point) ^
      const DeepCollectionEquality().hash(wind_speed) ^
      const DeepCollectionEquality().hash(wind_deg) ^
      const DeepCollectionEquality().hash(weather) ^
      const DeepCollectionEquality().hash(clouds) ^
      const DeepCollectionEquality().hash(pop) ^
      const DeepCollectionEquality().hash(rain) ^
      const DeepCollectionEquality().hash(uvi);

  @JsonKey(ignore: true)
  @override
  _$DailyCopyWith<_Daily> get copyWith =>
      __$DailyCopyWithImpl<_Daily>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_DailyToJson(this);
  }
}

abstract class _Daily implements Daily {
  const factory _Daily(
      {required int dt,
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
      required double uvi}) = _$_Daily;

  factory _Daily.fromJson(Map<String, dynamic> json) = _$_Daily.fromJson;

  @override
  int get dt => throw _privateConstructorUsedError;
  @override
  int get sunrise => throw _privateConstructorUsedError;
  @override
  int get sunset => throw _privateConstructorUsedError;
  @override
  int get moonrise => throw _privateConstructorUsedError;
  @override
  int get moonset => throw _privateConstructorUsedError;
  @override
  double get moon_phase => throw _privateConstructorUsedError;
  @override
  Temp get temp => throw _privateConstructorUsedError;
  @override
  FeelsLike get feels_like => throw _privateConstructorUsedError;
  @override
  int get pressure => throw _privateConstructorUsedError;
  @override
  int get humidity => throw _privateConstructorUsedError;
  @override
  double get dew_point => throw _privateConstructorUsedError;
  @override
  double get wind_speed => throw _privateConstructorUsedError;
  @override
  int get wind_deg => throw _privateConstructorUsedError;
  @override
  List<Weather> get weather => throw _privateConstructorUsedError;
  @override
  int get clouds => throw _privateConstructorUsedError;
  @override
  double get pop => throw _privateConstructorUsedError;
  @override
  double? get rain => throw _privateConstructorUsedError;
  @override
  double get uvi => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$DailyCopyWith<_Daily> get copyWith => throw _privateConstructorUsedError;
}

FeelsLike _$FeelsLikeFromJson(Map<String, dynamic> json) {
  return _FeelsLike.fromJson(json);
}

/// @nodoc
class _$FeelsLikeTearOff {
  const _$FeelsLikeTearOff();

  _FeelsLike call(
      {required double day,
      required double night,
      required double eve,
      required double morn}) {
    return _FeelsLike(
      day: day,
      night: night,
      eve: eve,
      morn: morn,
    );
  }

  FeelsLike fromJson(Map<String, Object> json) {
    return FeelsLike.fromJson(json);
  }
}

/// @nodoc
const $FeelsLike = _$FeelsLikeTearOff();

/// @nodoc
mixin _$FeelsLike {
  double get day => throw _privateConstructorUsedError;
  double get night => throw _privateConstructorUsedError;
  double get eve => throw _privateConstructorUsedError;
  double get morn => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FeelsLikeCopyWith<FeelsLike> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FeelsLikeCopyWith<$Res> {
  factory $FeelsLikeCopyWith(FeelsLike value, $Res Function(FeelsLike) then) =
      _$FeelsLikeCopyWithImpl<$Res>;
  $Res call({double day, double night, double eve, double morn});
}

/// @nodoc
class _$FeelsLikeCopyWithImpl<$Res> implements $FeelsLikeCopyWith<$Res> {
  _$FeelsLikeCopyWithImpl(this._value, this._then);

  final FeelsLike _value;
  // ignore: unused_field
  final $Res Function(FeelsLike) _then;

  @override
  $Res call({
    Object? day = freezed,
    Object? night = freezed,
    Object? eve = freezed,
    Object? morn = freezed,
  }) {
    return _then(_value.copyWith(
      day: day == freezed
          ? _value.day
          : day // ignore: cast_nullable_to_non_nullable
              as double,
      night: night == freezed
          ? _value.night
          : night // ignore: cast_nullable_to_non_nullable
              as double,
      eve: eve == freezed
          ? _value.eve
          : eve // ignore: cast_nullable_to_non_nullable
              as double,
      morn: morn == freezed
          ? _value.morn
          : morn // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
abstract class _$FeelsLikeCopyWith<$Res> implements $FeelsLikeCopyWith<$Res> {
  factory _$FeelsLikeCopyWith(
          _FeelsLike value, $Res Function(_FeelsLike) then) =
      __$FeelsLikeCopyWithImpl<$Res>;
  @override
  $Res call({double day, double night, double eve, double morn});
}

/// @nodoc
class __$FeelsLikeCopyWithImpl<$Res> extends _$FeelsLikeCopyWithImpl<$Res>
    implements _$FeelsLikeCopyWith<$Res> {
  __$FeelsLikeCopyWithImpl(_FeelsLike _value, $Res Function(_FeelsLike) _then)
      : super(_value, (v) => _then(v as _FeelsLike));

  @override
  _FeelsLike get _value => super._value as _FeelsLike;

  @override
  $Res call({
    Object? day = freezed,
    Object? night = freezed,
    Object? eve = freezed,
    Object? morn = freezed,
  }) {
    return _then(_FeelsLike(
      day: day == freezed
          ? _value.day
          : day // ignore: cast_nullable_to_non_nullable
              as double,
      night: night == freezed
          ? _value.night
          : night // ignore: cast_nullable_to_non_nullable
              as double,
      eve: eve == freezed
          ? _value.eve
          : eve // ignore: cast_nullable_to_non_nullable
              as double,
      morn: morn == freezed
          ? _value.morn
          : morn // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_FeelsLike implements _FeelsLike {
  const _$_FeelsLike(
      {required this.day,
      required this.night,
      required this.eve,
      required this.morn});

  factory _$_FeelsLike.fromJson(Map<String, dynamic> json) =>
      _$_$_FeelsLikeFromJson(json);

  @override
  final double day;
  @override
  final double night;
  @override
  final double eve;
  @override
  final double morn;

  @override
  String toString() {
    return 'FeelsLike(day: $day, night: $night, eve: $eve, morn: $morn)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _FeelsLike &&
            (identical(other.day, day) ||
                const DeepCollectionEquality().equals(other.day, day)) &&
            (identical(other.night, night) ||
                const DeepCollectionEquality().equals(other.night, night)) &&
            (identical(other.eve, eve) ||
                const DeepCollectionEquality().equals(other.eve, eve)) &&
            (identical(other.morn, morn) ||
                const DeepCollectionEquality().equals(other.morn, morn)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(day) ^
      const DeepCollectionEquality().hash(night) ^
      const DeepCollectionEquality().hash(eve) ^
      const DeepCollectionEquality().hash(morn);

  @JsonKey(ignore: true)
  @override
  _$FeelsLikeCopyWith<_FeelsLike> get copyWith =>
      __$FeelsLikeCopyWithImpl<_FeelsLike>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_FeelsLikeToJson(this);
  }
}

abstract class _FeelsLike implements FeelsLike {
  const factory _FeelsLike(
      {required double day,
      required double night,
      required double eve,
      required double morn}) = _$_FeelsLike;

  factory _FeelsLike.fromJson(Map<String, dynamic> json) =
      _$_FeelsLike.fromJson;

  @override
  double get day => throw _privateConstructorUsedError;
  @override
  double get night => throw _privateConstructorUsedError;
  @override
  double get eve => throw _privateConstructorUsedError;
  @override
  double get morn => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$FeelsLikeCopyWith<_FeelsLike> get copyWith =>
      throw _privateConstructorUsedError;
}

Temp _$TempFromJson(Map<String, dynamic> json) {
  return _Temp.fromJson(json);
}

/// @nodoc
class _$TempTearOff {
  const _$TempTearOff();

  _Temp call(
      {required double day,
      required double min,
      required double max,
      required double night,
      required double eve,
      required double morn}) {
    return _Temp(
      day: day,
      min: min,
      max: max,
      night: night,
      eve: eve,
      morn: morn,
    );
  }

  Temp fromJson(Map<String, Object> json) {
    return Temp.fromJson(json);
  }
}

/// @nodoc
const $Temp = _$TempTearOff();

/// @nodoc
mixin _$Temp {
  double get day => throw _privateConstructorUsedError;
  double get min => throw _privateConstructorUsedError;
  double get max => throw _privateConstructorUsedError;
  double get night => throw _privateConstructorUsedError;
  double get eve => throw _privateConstructorUsedError;
  double get morn => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TempCopyWith<Temp> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TempCopyWith<$Res> {
  factory $TempCopyWith(Temp value, $Res Function(Temp) then) =
      _$TempCopyWithImpl<$Res>;
  $Res call(
      {double day,
      double min,
      double max,
      double night,
      double eve,
      double morn});
}

/// @nodoc
class _$TempCopyWithImpl<$Res> implements $TempCopyWith<$Res> {
  _$TempCopyWithImpl(this._value, this._then);

  final Temp _value;
  // ignore: unused_field
  final $Res Function(Temp) _then;

  @override
  $Res call({
    Object? day = freezed,
    Object? min = freezed,
    Object? max = freezed,
    Object? night = freezed,
    Object? eve = freezed,
    Object? morn = freezed,
  }) {
    return _then(_value.copyWith(
      day: day == freezed
          ? _value.day
          : day // ignore: cast_nullable_to_non_nullable
              as double,
      min: min == freezed
          ? _value.min
          : min // ignore: cast_nullable_to_non_nullable
              as double,
      max: max == freezed
          ? _value.max
          : max // ignore: cast_nullable_to_non_nullable
              as double,
      night: night == freezed
          ? _value.night
          : night // ignore: cast_nullable_to_non_nullable
              as double,
      eve: eve == freezed
          ? _value.eve
          : eve // ignore: cast_nullable_to_non_nullable
              as double,
      morn: morn == freezed
          ? _value.morn
          : morn // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
abstract class _$TempCopyWith<$Res> implements $TempCopyWith<$Res> {
  factory _$TempCopyWith(_Temp value, $Res Function(_Temp) then) =
      __$TempCopyWithImpl<$Res>;
  @override
  $Res call(
      {double day,
      double min,
      double max,
      double night,
      double eve,
      double morn});
}

/// @nodoc
class __$TempCopyWithImpl<$Res> extends _$TempCopyWithImpl<$Res>
    implements _$TempCopyWith<$Res> {
  __$TempCopyWithImpl(_Temp _value, $Res Function(_Temp) _then)
      : super(_value, (v) => _then(v as _Temp));

  @override
  _Temp get _value => super._value as _Temp;

  @override
  $Res call({
    Object? day = freezed,
    Object? min = freezed,
    Object? max = freezed,
    Object? night = freezed,
    Object? eve = freezed,
    Object? morn = freezed,
  }) {
    return _then(_Temp(
      day: day == freezed
          ? _value.day
          : day // ignore: cast_nullable_to_non_nullable
              as double,
      min: min == freezed
          ? _value.min
          : min // ignore: cast_nullable_to_non_nullable
              as double,
      max: max == freezed
          ? _value.max
          : max // ignore: cast_nullable_to_non_nullable
              as double,
      night: night == freezed
          ? _value.night
          : night // ignore: cast_nullable_to_non_nullable
              as double,
      eve: eve == freezed
          ? _value.eve
          : eve // ignore: cast_nullable_to_non_nullable
              as double,
      morn: morn == freezed
          ? _value.morn
          : morn // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Temp implements _Temp {
  const _$_Temp(
      {required this.day,
      required this.min,
      required this.max,
      required this.night,
      required this.eve,
      required this.morn});

  factory _$_Temp.fromJson(Map<String, dynamic> json) =>
      _$_$_TempFromJson(json);

  @override
  final double day;
  @override
  final double min;
  @override
  final double max;
  @override
  final double night;
  @override
  final double eve;
  @override
  final double morn;

  @override
  String toString() {
    return 'Temp(day: $day, min: $min, max: $max, night: $night, eve: $eve, morn: $morn)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Temp &&
            (identical(other.day, day) ||
                const DeepCollectionEquality().equals(other.day, day)) &&
            (identical(other.min, min) ||
                const DeepCollectionEquality().equals(other.min, min)) &&
            (identical(other.max, max) ||
                const DeepCollectionEquality().equals(other.max, max)) &&
            (identical(other.night, night) ||
                const DeepCollectionEquality().equals(other.night, night)) &&
            (identical(other.eve, eve) ||
                const DeepCollectionEquality().equals(other.eve, eve)) &&
            (identical(other.morn, morn) ||
                const DeepCollectionEquality().equals(other.morn, morn)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(day) ^
      const DeepCollectionEquality().hash(min) ^
      const DeepCollectionEquality().hash(max) ^
      const DeepCollectionEquality().hash(night) ^
      const DeepCollectionEquality().hash(eve) ^
      const DeepCollectionEquality().hash(morn);

  @JsonKey(ignore: true)
  @override
  _$TempCopyWith<_Temp> get copyWith =>
      __$TempCopyWithImpl<_Temp>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_TempToJson(this);
  }
}

abstract class _Temp implements Temp {
  const factory _Temp(
      {required double day,
      required double min,
      required double max,
      required double night,
      required double eve,
      required double morn}) = _$_Temp;

  factory _Temp.fromJson(Map<String, dynamic> json) = _$_Temp.fromJson;

  @override
  double get day => throw _privateConstructorUsedError;
  @override
  double get min => throw _privateConstructorUsedError;
  @override
  double get max => throw _privateConstructorUsedError;
  @override
  double get night => throw _privateConstructorUsedError;
  @override
  double get eve => throw _privateConstructorUsedError;
  @override
  double get morn => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$TempCopyWith<_Temp> get copyWith => throw _privateConstructorUsedError;
}
