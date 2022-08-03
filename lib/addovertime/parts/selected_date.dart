import 'package:flutter/material.dart';
import 'package:overtime_application/style/color_class.dart';

class SelectedDate extends StatelessWidget {
  const SelectedDate({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 350,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(0),
        color: ColorClass.buttoncolor,
        boxShadow: const [
          BoxShadow(
            color: Colors.black38,
            offset: Offset(
              2.0,
              2.0,
            ),
            blurRadius: 8.0,
            spreadRadius: 1.0,
          ),
        ],
      ),
      child: Padding(
        padding: EdgeInsets.all(10.0),
        child: Text("31.07.2022",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontWeight: FontWeight.w900,
              color: ColorClass.textcolor,
              fontSize: 19,
              fontStyle: FontStyle.italic,
            )),
      ),
    );
  }
}
