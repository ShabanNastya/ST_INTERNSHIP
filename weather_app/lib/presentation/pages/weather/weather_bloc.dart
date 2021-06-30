import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/domain/model/weather.dart';
import 'package:weather_app/domain/usecase/get_weather_usecase.dart';

class WeatherBloc extends Bloc<WeatherEvent, List<WeatherModel>> {
  GetWeatherUseCase _getWeatherUseCase;

  WeatherBloc(this._getWeatherUseCase) : super(List<WeatherModel>()) {
    add(WeatherEvent.init);
  }

  @override
  Stream<List<WeatherModel>> mapEventToState(WeatherEvent event) async* {
    switch (event) {
      case WeatherEvent.init:
        var weather = await _getWeatherUseCase.execute(null);
        yield weather;
        break;
      default:
        addError(Exception('unsupported event'));
    }
  }
}

enum WeatherEvent {
  init,
}
