class WeatherList {
  List<WeatherModel> items;

  WeatherList({this.items});
}

class WeatherModel {
  int id;
  String city;
  String status;
  int degrees;

  WeatherModel({this.id, this.city, this.status, this.degrees});
}
