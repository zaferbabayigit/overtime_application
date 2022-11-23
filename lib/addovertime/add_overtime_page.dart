import 'package:flutter/material.dart';
import 'package:overtime_application/addovertime/parts/coefficient_button.dart';
import 'package:overtime_application/addovertime/parts/save_button.dart';
import 'package:overtime_application/addovertime/parts/overtime_text.dart';
import 'package:overtime_application/addovertime/parts/overtime_login.dart';
import 'package:overtime_application/addovertime/parts/selected_date.dart';
import 'package:overtime_application/saveovertime/parts/calendar.dart';
import 'package:overtime_application/style/color_class.dart';

class AddOvertimePage extends StatefulWidget {
  const AddOvertimePage({Key? key}) : super(key: key);

  @override
  State<AddOvertimePage> createState() => _AddOvertimePageState();
}

class _AddOvertimePageState extends State<AddOvertimePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: ColorClass.scaffoldBackground,
          foregroundColor: ColorClass.textcolor,
          actions: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextButton.icon(
                  onPressed: () {},
                  icon: Icon(
                    Icons.delete,
                    color: ColorClass.textcolor,
                  ),
                  label: Text("Delete",
                      style: TextStyle(
                        fontWeight: FontWeight.w900,
                        color: ColorClass.textcolor,
                        fontSize: 16,
                        fontStyle: FontStyle.normal,
                      ))),
            )
          ],
        ),
        body: SingleChildScrollView(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 40,
            ),
            SelectedDate(
              selectedDay: selectedDay,
            ),
            const SizedBox(
              height: 40,
            ),
            const OvertimeText(),
            const OvertimeLogin(),
            const SizedBox(
              height: 40,
            ),
            const CoefficientButton(),
            const SizedBox(
              height: 30,
            ),
            SaveButton(),
          ],
        )));
  }
}
