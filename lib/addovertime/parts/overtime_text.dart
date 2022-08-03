import 'package:flutter/material.dart';

class OvertimeText extends StatefulWidget {
  const OvertimeText({Key? key}) : super(key: key);

  @override
  State<OvertimeText> createState() => _OvertimeTextState();
}

class _OvertimeTextState extends State<OvertimeText> {
  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(10.0),
      child: Text("OVERTİME ENTER",
          textAlign: TextAlign.center,
          style: TextStyle(
            fontWeight: FontWeight.w900,
            color: Color(0xff0D47A1),
            fontSize: 19,
            fontStyle: FontStyle.italic,
          )),
    );
  }
}
