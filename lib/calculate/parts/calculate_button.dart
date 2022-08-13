import 'package:flutter/material.dart';
import 'package:overtime_application/home/home.dart';
import 'package:overtime_application/style/color_class.dart';

class CalculateSave extends StatefulWidget {
  CalculateSave({Key? key}) : super(key: key);

  @override
  State<CalculateSave> createState() => _CalculateSaveState();
}

class _CalculateSaveState extends State<CalculateSave> {
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
            child: Text("Save",
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
