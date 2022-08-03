import 'package:flutter/material.dart';
import 'package:overtime_application/style/color_class.dart';

class TextWelcome extends StatefulWidget {
  const TextWelcome({Key? key}) : super(key: key);

  @override
  State<TextWelcome> createState() => _TextWelcomeState();
}

class _TextWelcomeState extends State<TextWelcome> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 30,
          width: MediaQuery.of(context).size.width,
          color: ColorClass.buttoncolor,
          child: Text(
            'OVERTIME CALCULATION',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontWeight: FontWeight.w900,
              color: ColorClass.textcolor,
              fontSize: 24,
              fontStyle: FontStyle.italic,
            ),
          ),
        ),
        const SizedBox(
          height: 50,
        ),
        Container(
          height: 70,
          width: MediaQuery.of(context).size.width,
          color: ColorClass.buttoncolor,
          child: Text(
            "MONEY MONEY MONEY",
            style: TextStyle(
              fontWeight: FontWeight.w900,
              color: ColorClass.textcolor,
              fontSize: 20,
              fontStyle: FontStyle.italic,
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }
}
