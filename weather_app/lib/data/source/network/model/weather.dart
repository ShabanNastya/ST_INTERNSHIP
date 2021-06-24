import 'package:json_annotation/json_annotation.dart';
//part 'weather.g.dart';

@JsonSerializable()
class Weather{
  @JsonKey(name: 'Cur_ID')
  int id;

  @JsonKey(name: 'Cur_City')
  String city;

  @JsonKey(name: 'Cur_Status')
  String status;

  @JsonKey(name: 'Cur_Degrees')
  int degrees;

  Weather({this.id, this.city, this.status, this.degrees});

  /*factory Weather.fromJson(Map<String, dynamic> json) => _$WeatherFromJson(json);
  Map<String, dynamic> toJson() => _$WeatherFromJson(this);*/
}