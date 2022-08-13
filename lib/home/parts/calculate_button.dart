import 'package:flutter/material.dart';
import 'package:overtime_application/calculate/calculate_page.dart';
import 'package:overtime_application/style/color_class.dart';
import 'package:overtime_application/welcome/welcome_page.dart';

class CalculateButton extends StatefulWidget {
  const CalculateButton({Key? key}) : super(key: key);

  @override
  State<CalculateButton> createState() => _CalculateButtonState();
}

class _CalculateButtonState extends State<CalculateButton> {
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => CalculatePage()),
        );
      },
      child: Container(
        height: 100,
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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.all(20.0),
                  child: Icon(
                    Icons.calculate,
                    color: ColorClass.textcolor,
                    size: 50,
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Padding(
                  padding: EdgeInsets.all(20.0),
                  child: Text("CALCULATE",
                      style: TextStyle(
                        fontWeight: FontWeight.w900,
                        color: ColorClass.textcolor,
                        fontSize: 20,
                        fontStyle: FontStyle.italic,
                      )),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
