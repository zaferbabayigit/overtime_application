import 'package:flutter/material.dart';
import 'package:overtime_application/style/color_class.dart';

class OvertimeLogin extends StatefulWidget {
  const OvertimeLogin({Key? key}) : super(key: key);

  @override
  State<OvertimeLogin> createState() => _OvertimeLoginState();
}

class _OvertimeLoginState extends State<OvertimeLogin> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: 350,
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
      child: Column(children: [
        Padding(
          padding: EdgeInsets.all(8.0),
          child: Text("Overtime Coefficient : 2",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.w900,
                color: ColorClass.textcolor,
                fontSize: 15,
                fontStyle: FontStyle.italic,
              )),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.all(8.0),
              child: SizedBox(
                height: 80,
                width: 135,
                child: TextField(
                  controller: hourscontroller,
                  keyboardType: TextInputType.number,
                  textInputAction: TextInputAction.go,
                  cursorColor: ColorClass.buttoncolor,
                  decoration: InputDecoration(
                      suffixIcon: Icon(Icons.watch_later),
                      filled: true,
                      fillColor: ColorClass.scaffoldBackground,
                      labelText: "Hours :",
                      labelStyle: TextStyle(
                        fontSize: 17,
                      ),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(0)))),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                height: 80,
                width: 135,
                child: TextField(
                  controller: minutecontroller,
                  keyboardType: TextInputType.number,
                  textInputAction: TextInputAction.go,
                  cursorColor: ColorClass.buttoncolor,
                  decoration: InputDecoration(
                      suffixIcon: Icon(Icons.watch_later),
                      filled: true,
                      fillColor: ColorClass.scaffoldBackground,
                      labelText: "Minute :",
                      labelStyle: TextStyle(
                        fontSize: 16,
                      ),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(0)))),
                ),
              ),
            ),
          ],
        ),
        Padding(
          padding: EdgeInsets.all(8.0),
          child: Text("Total Work Coefficient : 0",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.w900,
                color: ColorClass.textcolor,
                fontSize: 15,
                fontStyle: FontStyle.italic,
              )),
        ),
      ]),
    );
  }
}

final TextEditingController hourscontroller = TextEditingController();
final TextEditingController minutecontroller = TextEditingController();
