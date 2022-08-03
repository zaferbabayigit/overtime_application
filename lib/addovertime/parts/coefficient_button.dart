import 'package:flutter/material.dart';
import 'package:overtime_application/addovertime/add_overtime_page.dart';
import 'package:overtime_application/settings/settings_page.dart';
import 'package:overtime_application/style/color_class.dart';

class CoefficientButton extends StatefulWidget {
  const CoefficientButton({Key? key}) : super(key: key);

  @override
  State<CoefficientButton> createState() => _CoefficientButtonState();
}

class _CoefficientButtonState extends State<CoefficientButton> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: MaterialButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SettingsPage()),
              );
            },
            child: Container(
              height: 50,
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
                  child: Text("Coefficient Change",
                      style: TextStyle(
                        fontWeight: FontWeight.w900,
                        color: ColorClass.textcolor,
                        fontSize: 19,
                        fontStyle: FontStyle.italic,
                      ))),
            ),
          ),
        ),
      ],
    );
  }
}
