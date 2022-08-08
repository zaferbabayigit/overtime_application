import 'package:flutter/material.dart';
import 'package:overtime_application/addovertime/parts/save_button.dart';
import 'package:overtime_application/settings/parts/overtime_friday.dart';
import 'package:overtime_application/settings/parts/overtime_monday.dart';
import 'package:overtime_application/settings/parts/overtime_saturday.dart';
import 'package:overtime_application/settings/parts/overtime_sunday.dart';
import 'package:overtime_application/settings/parts/overtime_thursday.dart';
import 'package:overtime_application/settings/parts/overtime_tuesday.dart';
import 'package:overtime_application/settings/parts/overtime_wednesday.dart';
import 'package:overtime_application/settings/parts/text_class.dart';
import 'package:overtime_application/style/color_class.dart';

class SettingsPage extends StatefulWidget {
  SettingsPage({Key? key}) : super(key: key);

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorClass.scaffoldBackground,
        foregroundColor: ColorClass.textcolor,
      ),
      body: SingleChildScrollView(
          child: Column(
        children: [
          OvertimeMonday(),
          OvertimeTuesday(),
          OvertimeWednesday(),
          OvertimeThursday(),
          OvertimeFriday(),
          OvertimeSaturday(),
          OvertimeSunday(),
          SizedBox(
            height: 20,
          ),
          SaveButton(),
          SizedBox(
            height: 40,
          )
        ],
      )),
    );
  }
}
