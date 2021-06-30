import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:weather_app/domain/usecase/get_weather_usecase.dart';
import 'package:weather_app/presentation/pages/home/home_page.dart';
import 'package:get_it/get_it.dart';

import 'package:weather_app/data/repository/weather_repository_impl.dart';
import 'package:weather_app/data/source/network/api/weather_api_service.dart';
import 'package:weather_app/data/source/network/weather_data_source.dart';
import 'package:weather_app/domain/repository/weather_repository.dart';

GetIt getIt = GetIt.instance;


/// Custom [BlocObserver] which observes all bloc and cubit instances.
class SimpleBlocObserver extends BlocObserver {
  @override
  void onEvent(Bloc bloc, Object event) {
    print(event);
    super.onEvent(bloc, event);
  }

  @override
  void onChange(Cubit cubit, Change change) {
    print(change);
    super.onChange(cubit, change);
  }

  @override
  void onTransition(Bloc bloc, Transition transition) {
    print(transition);
    super.onTransition(bloc, transition);
  }

  @override
  void onError(Cubit cubit, Object error, StackTrace stackTrace) {
    print(error);
    super.onError(cubit, error, stackTrace);
  }
}

void main() {

  HttpOverrides.global = new MyHttpOverrides(); // trust all certificate

  getIt.registerSingleton<WeatherDataSource>(WeatherDataSource(WeatherApiService(Dio()..interceptors.add(LogInterceptor(requestBody: true, responseBody: true)))),
      signalsReady: true);

  getIt.registerSingleton<WeatherRepository>(WeatherRepositoryImpl(getIt<WeatherDataSource>()),
      signalsReady: true);

  getIt.registerFactory<GetWeatherUseCase>(() {
    return GetWeatherUseCase(getIt<WeatherRepository>());
  });
  Bloc.observer = SimpleBlocObserver();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Weather App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}

class MyHttpOverrides extends HttpOverrides {
  @override
  HttpClient createHttpClient(SecurityContext context) {
    return super.createHttpClient(context)
      ..badCertificateCallback = (X509Certificate cert, String host,
        int port) => true;
  }
}
