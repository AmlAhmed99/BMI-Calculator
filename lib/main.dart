import 'package:bmi_calculator/BMIResultScreen.dart';
import 'package:bmi_calculator/BMIScreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
          BMIScreen.bmiscreen:(ctx)=>BMIScreen(),
        bmiResultScreen.bmiresultscreen:(ctx)=>bmiResultScreen()
      },
      initialRoute: BMIScreen.bmiscreen,
      home:BMIScreen() ,
    );
  }
}


