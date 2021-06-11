import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Ask me anything'),
          backgroundColor: Colors.indigo,
        ),
        body: MagicBall(),
        backgroundColor: Colors.lightBlueAccent,
      ),
    );
  }
}


class MagicBall extends StatefulWidget {
  @override
  _MagicBallState createState() => _MagicBallState();
}

class _MagicBallState extends State<MagicBall> {
  int ballNumber = 1;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: TextButton(
        onPressed: () {
          setState(() {
            Random rnd = new Random();
            int min = 1;
            int max = 6;
            ballNumber = min + rnd.nextInt(max - min);
            print('$ballNumber');
          });
        },
        child: Image.asset('assets/images/ball$ballNumber.png', height: 250, width: 250),
      ),
    );
  }
}