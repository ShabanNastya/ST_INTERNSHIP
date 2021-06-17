import 'package:bmi_calculator/resultPageState.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:bmi_calculator/calculateResult.dart';

enum Gender { male, female }

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BMI Calculator',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      home: InputPage(title: 'BMI Calculator'),
    );
  }
}

class InputPage extends StatefulWidget {
  InputPage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Color inactiveColor = Colors.deepPurple;
  Color activeColor = Colors.deepPurpleAccent;
  Gender selectedGender = Gender.male;

  double height = 120;
  double weight = 60;
  double age = 18;
  String status = "Normal";
  double result = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              GestureDetector(
                onTap: () {
                  setState(() {
                    selectedGender = Gender.male;
                  });
                },
                child: Container(
                  margin: EdgeInsets.all(10.0),
                  padding: EdgeInsets.all(20.0),
                  decoration: BoxDecoration(
                      color: selectedGender == Gender.male
                          ? activeColor
                          : inactiveColor),
                  child: Column(
                    children: <Widget>[
                      Icon(
                        FontAwesomeIcons.mars,
                        size: 50.0,
                        color: Colors.white,
                      ),
                      SizedBox(
                        height: 5.0,
                      ),
                      Text(
                        'MALE',
                        style: TextStyle(
                          color: Colors.white30,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(padding: EdgeInsets.all(50.0)),
              GestureDetector(
                onTap: () {
                  setState(() {
                    selectedGender = Gender.female;
                  });
                },
                child: Container(
                  margin: EdgeInsets.all(10.0),
                  padding: EdgeInsets.all(20.0),
                  decoration: BoxDecoration(
                      color: selectedGender == Gender.female
                          ? activeColor
                          : inactiveColor),
                  child: Column(
                    children: <Widget>[
                      Icon(
                        FontAwesomeIcons.venus,
                        size: 50.0,
                        color: Colors.white,
                      ),
                      SizedBox(
                        height: 5.0,
                      ),
                      Text(
                        'FEMALE',
                        style: TextStyle(
                          color: Colors.white30,
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
          SizedBox(
            height: 20.0,
          ),
          Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Text(
                  'HEIGHT',
                  style: TextStyle(
                    color: Colors.white30,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.baseline,
                  textBaseline: TextBaseline.alphabetic,
                  children: <Widget>[
                    Text(
                      height.toString(),
                      style: TextStyle(
                        fontSize: 50.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      'cm',
                      style: TextStyle(
                        color: Colors.white30,
                      ),
                    ),
                  ],
                ),
                SliderTheme(
                    data: SliderTheme.of(context).copyWith(
                      activeTrackColor: Colors.white,
                      inactiveTrackColor: Colors.white30,
                      overlayColor: Colors.pinkAccent,
                      thumbColor: Colors.pink,
                    ),
                    child: Slider(
                      value: height.toDouble(),
                      min: 50,
                      max: 200,
                      onChanged: (double v) {
                        setState(() {
                          height = v.round() as double;
                        });
                      },
                    ))
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                margin: EdgeInsets.all(10.0),
                padding: EdgeInsets.all(10.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'WEIGHT',
                      style: TextStyle(
                        color: Colors.white30,
                      ),
                    ),
                    SizedBox(
                      height: 5.0,
                    ),
                    Text(
                      weight.toString(),
                      style: TextStyle(
                        fontSize: 50.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        RawMaterialButton(
                          child: Icon(Icons.remove, size: 18),
                          shape: CircleBorder(),
                          fillColor: Colors.white,
                          onPressed: () {
                            setState(() {
                              if (weight > 30) {
                                weight--;
                              }
                            });
                          },
                        ),
                        RawMaterialButton(
                          child: Icon(Icons.add, size: 18),
                          shape: CircleBorder(),
                          fillColor: Colors.white,
                          onPressed: () {
                            setState(() {
                              if (weight < 300) {
                                weight++;
                              }
                            });
                          },
                        )
                      ],
                    )
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.all(10.0),
                padding: EdgeInsets.all(10.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'AGE',
                      style: TextStyle(
                        color: Colors.white30,
                      ),
                    ),
                    SizedBox(
                      height: 5.0,
                    ),
                    Text(
                      age.toString(),
                      style: TextStyle(
                        fontSize: 50.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        RawMaterialButton(
                          child: Icon(Icons.remove, size: 18),
                          shape: CircleBorder(),
                          fillColor: Colors.white,
                          onPressed: () {
                            setState(() {
                              if (age > 5) {
                                age--;
                              }
                            });
                          },
                        ),
                        RawMaterialButton(
                          child: Icon(Icons.add, size: 18),
                          shape: CircleBorder(),
                          fillColor: Colors.white,
                          onPressed: () {
                            setState(() {
                              if (age < 100) {
                                age++;
                              }
                            });
                          },
                        )
                      ],
                    )
                  ],
                ),
              ),
            ],
          )
        ],
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          CalculateResult calcResult = CalculateResult(
              height: height, weight: weight, result: result, status: status);
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => ResultPage(calcResult.calculateResult(),
                      calcResult.status, calcResult.getDescription())));
        },
        label: Text('CALCULATE'),
        backgroundColor: Colors.pinkAccent,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      backgroundColor: Colors.deepPurple,
    );
  }
}
