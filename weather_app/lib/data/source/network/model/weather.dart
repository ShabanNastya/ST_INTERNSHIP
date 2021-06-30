import 'package:json_annotation/json_annotation.dart';
part 'weather.g.dart';

@JsonSerializable()
class Weather {
  @JsonKey(name: 'id')
  int id;

  @JsonKey(name: 'weather')
  String currently;

  @JsonKey(name: 'temp')
  String temp;

  @JsonKey(name: 'humidity')
  int humidity;

  Weather({this.id, this.currently, this.temp, this.humidity});

  factory Weather.fromJson(Map<String, dynamic> json) => _$WeatherFromJson(json);
  Map<String, dynamic> toJson() => _$WeatherToJson(this);
}
