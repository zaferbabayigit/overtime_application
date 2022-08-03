import 'package:flutter/material.dart';
import 'package:overtime_application/addovertime/add_overtime_page.dart';
import 'package:overtime_application/home/home.dart';
import 'package:overtime_application/addovertime/add_overtime_page.dart';
import 'package:overtime_application/style/color_class.dart';

class OvertimeAddButton extends StatefulWidget {
  const OvertimeAddButton({Key? key}) : super(key: key);

  @override
  State<OvertimeAddButton> createState() => _OvertimeAddButtonState();
}

class _OvertimeAddButtonState extends State<OvertimeAddButton> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: MaterialButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => AddOvertimePage()),
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
                  child: Text("Add Overtime",
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
