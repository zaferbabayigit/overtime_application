import 'package:flutter/material.dart';
import 'package:overtime_application/style/color_class.dart';

class TotalOvertimePerMonthEntry extends StatefulWidget {
  TotalOvertimePerMonthEntry({Key? key}) : super(key: key);

  @override
  State<TotalOvertimePerMonthEntry> createState() =>
      _TotalOvertimePerMonthEntryState();
}

class _TotalOvertimePerMonthEntryState
    extends State<TotalOvertimePerMonthEntry> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(0.0),
      child: SizedBox(
        height: 35,
        width: 170,
        child: TextField(
          textAlign: TextAlign.start,
          keyboardType: TextInputType.number,
          textInputAction: TextInputAction.go,
          cursorColor: ColorClass.buttoncolor,
          decoration: InputDecoration(
              filled: true,
              fillColor: ColorClass.white,
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(0)))),
        ),
      ),
    );
  }
}
