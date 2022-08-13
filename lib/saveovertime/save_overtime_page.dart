import 'package:flutter/material.dart';
import 'package:overtime_application/addovertime/add_overtime_page.dart';
import 'package:overtime_application/home/parts/overtime_registration.dart';
import 'package:overtime_application/saveovertime/parts/monthly_total.dart';
import 'package:overtime_application/saveovertime/parts/overtime_add_button.dart';
import 'package:overtime_application/saveovertime/parts/calendar.dart';
import 'package:overtime_application/style/color_class.dart';

class OvertimeSavePage extends StatefulWidget {
  OvertimeSavePage({Key? key}) : super(key: key);

  @override
  State<OvertimeSavePage> createState() => _OvertimeSavePageState();
}

class _OvertimeSavePageState extends State<OvertimeSavePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: ColorClass.scaffoldBackground,
          foregroundColor: ColorClass.textcolor,
        ),
        body: SingleChildScrollView(
          child: Column(children: [
            Calendar(),
            SizedBox(
              height: 40,
            ),
            OvertimeAddButton(),
            SizedBox(
              height: 40,
            ),
            MonthlyTotal()
          ]),
        ));
  }
}
