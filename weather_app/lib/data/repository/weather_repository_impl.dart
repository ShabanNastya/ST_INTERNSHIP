import 'package:weather_app/data/source/network/model/weather.dart';
import 'package:weather_app/data/source/network/weather_data_source.dart';
import 'package:weather_app/domain/model/weather.dart';
import 'package:weather_app/domain/repository/weather_repository.dart';

class WeatherRepositoryImpl extends WeatherRepository {
  WeatherDataSource _weatherSource;

  WeatherRepositoryImpl(this._weatherSource);

  @override
  Future<List<WeatherModel>> getWeather() {
    return _weatherSource.getWeather().then((List<Weather> value) => value
        .map((Weather e) => WeatherModel(
        id: e.id,
        currently: e.currently.toString(),
        temp: e.temp.toString(),
        humidity: e.humidity))
        .toList());
  }
}
