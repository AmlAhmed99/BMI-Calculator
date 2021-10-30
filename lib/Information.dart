import 'package:flutter/material.dart';

class Information extends StatefulWidget {

  String info;
  int num;
  String unit;
  Information(this.info, this.num, this.unit);

  @override
  _InformationState createState() => _InformationState(info, num, unit);
}

class _InformationState extends State<Information> {
  String info;
  int num;
  String unit;

  _InformationState(this.info, this.num, this.unit);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
       // alignment: Alignment.center,
        margin: EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 12, 7, 59),
          borderRadius: BorderRadius.circular(5),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              info,
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.normal,
                fontSize: 25,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.baseline,
              textBaseline: TextBaseline.alphabetic,
              children: [
                Text(
                  '${num}',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.normal,
                    fontSize: 25,
                  ),
                ),
                SizedBox(width: 3,),
                Text(
                  unit,
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.normal,
                    fontSize: 15,
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                FloatingActionButton(
                  heroTag: 'a1',
                  onPressed: (){
                    setState(() {
                      num--;
                    });
                  },
                  child: Icon(Icons.remove),
                ),
                FloatingActionButton(
                  heroTag: 'a2',
                  onPressed: (){
                    setState(() {
                      num++;
                    });
                  },
                  child: Icon(Icons.add),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
