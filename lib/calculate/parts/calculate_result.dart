import 'package:flutter/material.dart';
import 'package:overtime_application/style/color_class.dart';

class CalculateResult extends StatefulWidget {
  CalculateResult({Key? key}) : super(key: key);

  @override
  State<CalculateResult> createState() => _CalculateResultState();
}

class _CalculateResultState extends State<CalculateResult> {
  @override
  Widget build(BuildContext context) {
    return Container(
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
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Overtime Earnings:",
                    style: TextStyle(fontWeight: FontWeight.bold)),
                Text("data", style: TextStyle(fontWeight: FontWeight.bold))
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Total Revenue:",
                    style: TextStyle(fontWeight: FontWeight.bold)),
                Text("data", style: TextStyle(fontWeight: FontWeight.bold))
              ],
            )
          ],
        ),
      ),
    );
  }
}
