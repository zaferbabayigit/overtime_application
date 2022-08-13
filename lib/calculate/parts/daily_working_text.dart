import 'package:flutter/material.dart';

class DailyWorkingText extends StatefulWidget {
  DailyWorkingText({Key? key}) : super(key: key);

  @override
  State<DailyWorkingText> createState() => _DailyWorkingTextState();
}

class _DailyWorkingTextState extends State<DailyWorkingText> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "Choose daily",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        Text(
          "working Hours :",
          style: TextStyle(fontWeight: FontWeight.bold),
        )
      ],
    );
  }
}
