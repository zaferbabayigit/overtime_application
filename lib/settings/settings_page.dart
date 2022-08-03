import 'package:flutter/material.dart';
import 'package:overtime_application/settings/parts/overtime_coefficient.dart';
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
      ),
      body: SingleChildScrollView(
          child: Column(
        children: [
          OvertimeCoefficient(),
          OvertimeCoefficient(),
          OvertimeCoefficient(),
          OvertimeCoefficient(),
          OvertimeCoefficient(),
          OvertimeCoefficient(),
          OvertimeCoefficient()
        ],
      )),
    );
  }
}
