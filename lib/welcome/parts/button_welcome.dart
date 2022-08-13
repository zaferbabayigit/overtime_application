import 'package:flutter/material.dart';
import 'package:overtime_application/home/home.dart';
import 'package:overtime_application/style/color_class.dart';

class ButtonWelcome extends StatefulWidget {
  const ButtonWelcome({Key? key}) : super(key: key);

  @override
  State<ButtonWelcome> createState() => _ButtonWelcomeState();
}

class _ButtonWelcomeState extends State<ButtonWelcome> {
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const Home()),
        );
      },
      child: Container(
        height: 60,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(0),
          color: ColorClass.buttoncolor,
          boxShadow: [
            BoxShadow(
              color: ColorClass.shadowcolor,
              offset: Offset(
                2.0,
                2.0,
              ),
              blurRadius: 8.0,
              spreadRadius: 1.0,
            ),
          ],
        ),
        child: Center(
            child: Text("GO ON",
                style: TextStyle(
                  fontWeight: FontWeight.w900,
                  color: ColorClass.textcolor,
                  fontSize: 16,
                  fontStyle: FontStyle.italic,
                ))),
      ),
    );
  }
}
