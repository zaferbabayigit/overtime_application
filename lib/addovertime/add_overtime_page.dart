import 'package:flutter/material.dart';
import 'package:mesai_application_1/addovertime/parts/coefficient_button.dart';
import 'package:mesai_application_1/addovertime/parts/save_button.dart';
import 'package:mesai_application_1/addovertime/parts/overtime_text.dart';
import 'package:mesai_application_1/addovertime/parts/overtime_login.dart';
import 'package:mesai_application_1/addovertime/parts/selected_date.dart';

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
          backgroundColor: Color(0xffB3E5FC),
          foregroundColor: const Color(0xff0D47A1),
          actions: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextButton.icon(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.delete,
                    color: Color(0xff0D47A1),
                  ),
                  label: const Text("Delete",
                      style: TextStyle(
                        fontWeight: FontWeight.w900,
                        color: Color(0xff0D47A1),
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
            const SelectedDate(),
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
