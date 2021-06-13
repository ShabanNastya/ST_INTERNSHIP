import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  void playSound(int soundNumber) {
    final player = AudioCache();
    player.play('note$soundNumber.wav');
  }

  Expanded buildKey(int soundNumber, Color colors) {
    return Expanded(
      child: TextButton(
        style: TextButton.styleFrom(
          backgroundColor: colors,
        ),
        onPressed: () {
          playSound(soundNumber);
        },
        child: Padding(
          padding: EdgeInsets.all(5.0),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              buildKey(1, Colors.red),
              buildKey(2, Colors.orange),
              buildKey(3, Colors.yellow),
              buildKey(4, Colors.green),
              buildKey(5, Colors.cyan),
              buildKey(6, Colors.indigo),
              buildKey(7, Colors.purple),
            ],
          ),
        ),
      ),
    );
  }
}