import 'dart:math';

import 'package:bmi_calculator/BMIResultScreen.dart';
import 'package:bmi_calculator/Gender.dart';
import 'package:bmi_calculator/Information.dart';
import 'package:flutter/material.dart';

class BMIScreen extends StatefulWidget {
  static const bmiscreen = 'bmiscreen';
  @override
  _BMIScreenState createState() => _BMIScreenState();
}

class _BMIScreenState extends State<BMIScreen> {
  bool ismale = false;
  double height = 120;
  int weigth = 60;
  int age = 21;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text('BMI Calculator'),
        elevation: 0.0,
        backgroundColor: Colors.black,
        centerTitle: true,
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Gender('MALE', 'assets/images/male.png', () {
                  setState(() {
                    ismale = true;
                  });
                },
                  ismale,
                  ismale? Color.fromARGB(255, 27, 15, 236):Color.fromARGB(255, 12, 8, 75),
                ),
                Gender('FEMALE', 'assets/images/female.png', () {
                  setState(() {
                    ismale = false;
                  });
                },
                  ismale,
                  ismale?Color.fromARGB(255, 12, 8, 75) :Color.fromARGB(255, 27, 15, 236),
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 10),
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 16, 9, 83),
                borderRadius: BorderRadius.circular(5),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'HIEGHT',
                    style: TextStyle(color: Colors.white, fontSize: 25),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      Text(
                        '${height.round()}',
                        style: TextStyle(color: Colors.white, fontSize: 25),
                      ),
                      Text(
                        'CM',
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                  Slider(
                    value: height,
                    max: 220,
                    min: 80,
                    onChanged: (val) {
                      setState(() {
                        height = val;
                      });
                    },
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Information('Weight', weigth, 'Kg'),
                Information('Age', age, 'yrs'),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: MaterialButton(
              onPressed: () {
                double result = weigth / pow(height / 100, 2);
                print(result.round());
                Navigator.pushNamed(context, bmiResultScreen.bmiresultscreen,
                arguments:DataClass(result)
                );


              },
              minWidth: double.infinity,
              color: Colors.blue,
              child: Text(
                "Calculate",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
