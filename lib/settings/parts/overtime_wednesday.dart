import 'package:flutter/material.dart';
import 'package:overtime_application/settings/parts/text_class.dart';
import 'package:overtime_application/style/color_class.dart';

class OvertimeWednesday extends StatefulWidget {
  OvertimeWednesday({Key? key}) : super(key: key);

  @override
  State<OvertimeWednesday> createState() => _OvertimeWednesdayState();
}

class _OvertimeWednesdayState extends State<OvertimeWednesday> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: Container(
            height: 80,
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
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsets.all(15.0),
                  child: Text(SettingsText.wednesday,
                      style: TextStyle(
                        fontWeight: FontWeight.w900,
                        color: ColorClass.textcolor,
                        fontSize: 16,
                        fontStyle: FontStyle.italic,
                      )),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: SizedBox(
                    height: 60,
                    width: 100,
                    child: TextField(
                      keyboardType: TextInputType.number,
                      textInputAction: TextInputAction.go,
                      cursorColor: ColorClass.buttoncolor,
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: ColorClass.scaffoldBackground,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
