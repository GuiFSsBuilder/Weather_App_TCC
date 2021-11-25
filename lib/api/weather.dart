import 'package:weather_app_tcc/utils/entities/entities.dart';
import 'package:weather_app_tcc/utils/enums/enums.dart';
import 'package:weather_app_tcc/utils/helpers/helpers.dart';
import 'package:weather_app_tcc/utils/interfaces/interfaces.dart';

class WeatherApi {
  static final String baseUrl = Env.weatherApiPath;
  static final String appId = Env.weatherApiAppId;
  static const String language = 'pt_br';
  static const String units = 'metric';

  final IHttpClient _httpClient;

  WeatherApi(this._httpClient);

  Future<WeatherModel> getWeatherByCoordinates(Coordinates coords) async {
    try {
      final response = await _httpClient.request(
        url: '$baseUrl/weather',
        method: HttpMethod.get,
        params: {
          'appid': appId,
          'lat': coords.lat,
          'lon': coords.lng,
          'lang': language,
          'units': units,
        },
      );
      return WeatherModel.fromJson(response.body);
    } on HttpError catch (e) {
      throw Failure(e.message);
    }
  }

  Future<WeatherForecastModel> getWeatherForecastByCoordinates(
      Coordinates coords) async {
    try {
      final response = await _httpClient.request(
        url: '$baseUrl/onecall',
        method: HttpMethod.get,
        params: {
          'appid': appId,
          'lat': coords.lat,
          'lon': coords.lng,
          'lang': language,
          'units': units,
          'exclude': 'minutely,hourly,alerts,current'
        },
      );
      return WeatherForecastModel.fromJson(response.body);
    } on HttpError catch (e) {
      throw Failure(e.message);
    }
  }

  Future<WeatherModel> getWeatherByCity(
    String city,
  ) async {
    try {
      final response = await _httpClient.request(
        url: '$baseUrl/weather',
        method: HttpMethod.get,
        params: {
          'q': city,
          'units': units,
          'appid': appId,
          'lang': language,
        },
      );
      return WeatherModel.fromJson(response.body);
    } on HttpError catch (e) {
      if (e.statusCode == 404) {
        throw Failure('Cidade não encontrada');
      }
      throw Failure(e.message);
    } catch (e) {
      throw Failure(e.toString());
    }
  }
}
