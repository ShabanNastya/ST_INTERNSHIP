import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';
import 'package:weather_app/data/source/network/model/weather.dart';

part 'weather_api_service.g.dart';

String city = "London";
String apiKey = "YOURAPI";

@RestApi(baseUrl: "https://api.openweathermap.org/data/2.5")
abstract class WeatherApiService {
  factory WeatherApiService(Dio dio, {String baseUrl}) = _WeatherApiService;

  @GET("/weather?q=London&appid=YOURAPI&units=metric")
  Future<List<Weather>> getWeather();
}