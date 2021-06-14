import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Dice'),
          backgroundColor: Colors.red,
        ),
        body: Dice(),
        backgroundColor: Colors.lightGreen,
      ),
    );
  }
}

class Dice extends StatefulWidget {

  @override
  _DiceState createState() => _DiceState();
}


class _DiceState extends State<Dice> {
int firstDice = 1;
int secondDice = 1;

void randomNumberOfADice1()
{
  setState(() {
    firstDice = Random().nextInt(6) + 1;
  });
}

void randomNumberOfADice2()
{
  setState(() {
    secondDice = Random().nextInt(6) + 1;
  });
}

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: EdgeInsets.all(20.0),
          child: Row(
              children: <Widget>[
                Expanded(
                  child: TextButton(
                    onPressed: randomNumberOfADice1,
                    child: Image.asset('images/dice$firstDice.png', height: 200, width: 200),
                  ),
                ),
                SizedBox(width: 20.0),
                Expanded(
                  child: TextButton(
                    onPressed: randomNumberOfADice2,
                    child: Image.asset('images/dice$secondDice.png', height: 200, width: 200),
                  ),
                ),
              ]
          )
      ),
    );
  }
}