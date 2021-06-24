import 'package:weather_app/domain/model/weather.dart';

abstract class WeatherRepository {
  Future<List<WeatherModel>> getWeather();
}
