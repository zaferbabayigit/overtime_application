import 'package:flutter/material.dart';
import 'package:overtime_application/style/color_class.dart';

class OvertimeText extends StatefulWidget {
  const OvertimeText({Key? key}) : super(key: key);

  @override
  State<OvertimeText> createState() => _OvertimeTextState();
}

class _OvertimeTextState extends State<OvertimeText> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10.0),
      child: Text("OVERTİME ENTER",
          textAlign: TextAlign.center,
          style: TextStyle(
            fontWeight: FontWeight.w900,
            color: ColorClass.textcolor,
            fontSize: 19,
            fontStyle: FontStyle.italic,
          )),
    );
  }
}
