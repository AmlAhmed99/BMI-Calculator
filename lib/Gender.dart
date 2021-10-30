
import 'package:flutter/material.dart';

class Gender extends StatelessWidget {

  bool ismale;
  Function onTap;
  String gender;
  String ImgURL;
  Color color;
  Gender(this.gender,this.ImgURL,this.onTap,this.ismale,this.color);
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: GestureDetector(
          onTap: onTap,
          child: Container(
            alignment: Alignment.center,
          decoration: BoxDecoration(
            color:color,
            borderRadius: BorderRadius.circular(5),
          ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
               Image.asset(ImgURL,
                 color: Colors.white,
                 width: 100,
                 height: 100,
                 fit: BoxFit.cover,
               ),
                SizedBox(height: 15,),
                Text(
                  gender,
                  style: TextStyle(
                    color:  Colors.white,
                    fontWeight: FontWeight.normal,
                    fontSize: 18,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
