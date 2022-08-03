import 'package:flutter/material.dart';
import 'package:overtime_application/home/parts/settings_button.dart';
import 'package:overtime_application/home/parts/calculate_button.dart';
import 'package:overtime_application/home/parts/overtime_registration.dart';
import 'package:overtime_application/home/parts/remove_ads_button.dart';

import 'parts/overtime_registration.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("OVERTIME CALCULATION",
            style: TextStyle(
              fontWeight: FontWeight.w900,
              color: Color(0xff0D47A1),
              fontSize: 20,
              fontStyle: FontStyle.italic,
            )),
        foregroundColor: const Color(0xff0D47A1),
        backgroundColor: const Color(0xffB3E5FC),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: const [
            SizedBox(
              height: 30,
            ),
            OvertimeRegistrationButton(),
            SizedBox(
              height: 30,
            ),
            CalculateButton(),
            SizedBox(
              height: 30,
            ),
            SettingsButton(),
            SizedBox(
              height: 30,
            ),
            RemoveAdsButton(),
          ],
        ),
      ),
    );
  }
}
