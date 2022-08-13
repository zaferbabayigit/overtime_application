import 'package:flutter/material.dart';
import 'package:overtime_application/style/color_class.dart';

class TotalOvertimePerMonthText extends StatefulWidget {
  TotalOvertimePerMonthText({Key? key}) : super(key: key);

  @override
  State<TotalOvertimePerMonthText> createState() =>
      _TotalOvertimePerMonthTextState();
}

class _TotalOvertimePerMonthTextState extends State<TotalOvertimePerMonthText> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        children: [
          Text("Total Overtime", style: TextStyle(fontWeight: FontWeight.bold)),
          Text("Per Month :", style: TextStyle(fontWeight: FontWeight.bold)),
        ],
      ),
    );
  }
}
