class WeatherList {
  List<WeatherModel> items;

  WeatherList({this.items});
}

class WeatherModel {
  int id;
  String currently;
  String temp;
  int humidity;

  WeatherModel({this.id, this.currently, this.temp, this.humidity});
}