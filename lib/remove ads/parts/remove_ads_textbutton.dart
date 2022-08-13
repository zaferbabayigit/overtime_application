import 'package:flutter/material.dart';
import 'package:overtime_application/style/color_class.dart';

class AHSbutton extends StatefulWidget {
  AHSbutton({Key? key}) : super(key: key);

  @override
  State<AHSbutton> createState() => _AHSbuttonState();
}

class _AHSbuttonState extends State<AHSbutton> {
  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: () {},
        child: Text(
          "alphahuntersoftware@gmail.com",
          style: TextStyle(
              fontWeight: FontWeight.bold, color: ColorClass.textcolor),
        ));
  }
}
