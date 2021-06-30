import 'package:weather_app/data/source/network/api/weather_api_service.dart';
import 'package:weather_app/data/source/network/model/weather.dart';

class WeatherDataSource {
  WeatherApiService _weatherApiService;

  WeatherDataSource(this._weatherApiService);

  Future<List<Weather>> getWeather() {
    return _weatherApiService.getWeather();
  }
}