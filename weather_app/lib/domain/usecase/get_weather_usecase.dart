import 'package:weather_app/domain/model/weather.dart';
import 'package:weather_app/domain/repository/weather_repository.dart';
import 'package:weather_app/domain/usecase/future_usecase.dart';

class GetWeatherUseCase extends FutureUseCase<void, List<WeatherModel>> {
  WeatherRepository _weatherRepository;

  GetWeatherUseCase(this._weatherRepository);

  @override
  Future<List<WeatherModel>> execute(void params) {
    return _weatherRepository.getWeather();
  }
}