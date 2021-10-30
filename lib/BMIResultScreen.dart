
import 'package:bmi_calculator/BMIScreen.dart';
import 'package:flutter/material.dart';

class bmiResultScreen extends StatelessWidget {
  static const bmiresultscreen='bmiresultscreen';

  @override
  Widget build(BuildContext context) {
    var data=ModalRoute.of(context).settings.arguments as DataClass;
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text('BMI Calculator'),
        elevation: 0.0,
        backgroundColor: Colors.black,
        centerTitle: true,
      ),
      body: Container(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
             Text('BMI Result',style: TextStyle(
                 color: Colors.white,
               fontSize: 30,
             ),),
            SizedBox(height: 60,),
            Container(
              width: 300,
             height: 300,
             decoration: BoxDecoration(
               color:Color.fromARGB(255, 12, 8, 75),
               borderRadius: BorderRadius.circular(20),
             ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text('Your Result',style: TextStyle(
                    color: Colors.green,
                    fontSize: 30,
                  ),),
                  Text('${data.result.toInt()}',style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                  ),),
                  Text('you have a normal body weight.Good job!',style: TextStyle(
                      color: Colors.white
                  ),),
                ],
              ),
            ),

          ],
        ),
      ),

    );
  }

}

class DataClass{
  double result;

  DataClass(this.result);
}
