import 'package:flutter/material.dart';
import 'package:mesai_application_1/addovertime/add_overtime_page.dart';
import 'package:mesai_application_1/home/parts/overtime_registration.dart';
import 'package:mesai_application_1/saveovertime/parts/monthly_total.dart';
import 'package:mesai_application_1/saveovertime/parts/overtime_add_button.dart';
import 'package:mesai_application_1/saveovertime/parts/calendar.dart';

class MesaiKayitPage extends StatefulWidget {
  MesaiKayitPage({Key? key}) : super(key: key);

  @override
  State<MesaiKayitPage> createState() => _MesaiKayitPageState();
}

class _MesaiKayitPageState extends State<MesaiKayitPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xffB3E5FC),
          foregroundColor: const Color(0xff0D47A1),
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
