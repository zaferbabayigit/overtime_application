import 'package:flutter/material.dart';
import 'package:overtime_application/style/color_class.dart';

class MonthlySalaryEnter extends StatefulWidget {
  MonthlySalaryEnter({Key? key}) : super(key: key);

  @override
  State<MonthlySalaryEnter> createState() => _MonthlySalaryEnterState();
}

class _MonthlySalaryEnterState extends State<MonthlySalaryEnter> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Row(
        children: [
          Text("Monthly Salary:",
              style: TextStyle(fontWeight: FontWeight.bold)),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: SizedBox(
              height: 35,
              width: 170,
              child: TextField(
                textAlign: TextAlign.start,
                keyboardType: TextInputType.number,
                textInputAction: TextInputAction.go,
                cursorColor: ColorClass.buttoncolor,
                decoration: InputDecoration(
                    filled: true,
                    fillColor: ColorClass.white,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(0)))),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
