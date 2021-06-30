// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Weather _$WeatherFromJson(Map<String, dynamic> json) {
  return Weather(
    id: json['id'] as int,
    currently: json['weather'] as String,
    temp: json['temp'] as String,
    humidity: json['humidity'] as int,
  );
}

Map<String, dynamic> _$WeatherToJson(Weather instance) => <String, dynamic>{
      'id': instance.id,
      'weather': instance.currently,
      'temp': instance.temp,
      'humidity': instance.humidity,
    };
