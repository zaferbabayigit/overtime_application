import 'package:flutter/material.dart';
import 'package:overtime_application/style/color_class.dart';
import 'package:table_calendar/table_calendar.dart';

class SelectedDate extends StatelessWidget {
  SelectedDate({Key? key, required this.selectedDay}) : super(key: key);

  final DateTime selectedDay;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 350,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(0),
        color: ColorClass.buttoncolor,
        boxShadow: [
          BoxShadow(
            color: ColorClass.shadowcolor,
            offset: const Offset(
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
        child: Text("$selectedDay",
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
