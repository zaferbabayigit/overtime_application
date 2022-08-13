import 'package:flutter/material.dart';
import 'package:overtime_application/calculate/parts/daily_working_hour.dart';
import 'package:overtime_application/calculate/parts/daily_working_text.dart';
import 'package:overtime_application/calculate/parts/monthly_salary.dart';
import 'package:overtime_application/calculate/parts/total_overtime_per_month_entry.dart';
import 'package:overtime_application/calculate/parts/total_overtime_per_month_text.dart';
import 'package:overtime_application/home/parts/calculate_button.dart';
import 'package:overtime_application/style/color_class.dart';

import 'parts/calculate_button.dart';
import 'parts/calculate_result.dart';

class CalculatePage extends StatefulWidget {
  CalculatePage({Key? key}) : super(key: key);

  @override
  State<CalculatePage> createState() => _CalculatePageState();
}

class _CalculatePageState extends State<CalculatePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorClass.scaffoldBackground,
        foregroundColor: ColorClass.textcolor,
      ),
      body: SingleChildScrollView(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: 20,
          ),
          Container(
            height: 250,
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
              children: [
                SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [DailyWorkingText(), DailyWorkingHours()],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    MonthlySalaryEnter(),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TotalOvertimePerMonthText(),
                    TotalOvertimePerMonthEntry()
                  ],
                )
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          CalculateResult(),
          SizedBox(
            height: 20,
          ),
          CalculateSave(),
        ],
      )),
    );
  }
}
