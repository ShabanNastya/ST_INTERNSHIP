import 'package:flutter/material.dart';
import 'package:weather_app/presentation/pages/settings/settings_page.dart';

class WeatherPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Weather Page'),
        actions: <Widget>[
          new IconButton(icon: new Icon(Icons.settings), onPressed: (){
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return SettingsPage();
                },
              ),
            );
          },),
        ],
      ),
      body: Center(
        child: Text('WeatherPage'),
      ),
    );
  }
}
