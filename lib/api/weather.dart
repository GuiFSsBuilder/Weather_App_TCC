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
}
