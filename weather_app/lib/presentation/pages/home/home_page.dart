import 'package:flutter/material.dart';
import 'package:weather_app/presentation/pages/authorization/authorization_page.dart';
import 'package:weather_app/presentation/pages/registration/registration_page.dart';
import 'package:weather_app/presentation/pages/weather/weather_page.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Weather App',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Weather App'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                padding: EdgeInsets.all(20.0),
                child: ElevatedButton(
                  onPressed: () {
                    print('Sign IN');
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return AuthorizationPage();
                        },
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    shape: StadiumBorder(),
                    textStyle: TextStyle(
                      fontSize: 20,
                    ),
                    shadowColor: Colors.lightBlueAccent,
                    elevation: 5,
                  ),
                  child: const Text('Sign Up'),
                ),
              ),
              Container(
                child: ElevatedButton(
                  onPressed: () {
                    print('click IN');
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return RegistrationPage();
                        },
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    shape: StadiumBorder(),
                    textStyle: TextStyle(
                      fontSize: 20,
                    ),
                    shadowColor: Colors.lightBlueAccent,
                    elevation: 5,
                  ),
                  child: const Text('Sign In'),
                ),
              ),
              Container(
                padding: EdgeInsets.all(20.0),
                child: ElevatedButton(
                  onPressed: () {
                    print('LOG');
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return WeatherPage();
                        },
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    shape: StadiumBorder(),
                    textStyle: TextStyle(
                      fontSize: 20,
                    ),
                    shadowColor: Colors.lightBlueAccent,
                    elevation: 5,
                  ),
                  child: const Text('Without registration'),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
