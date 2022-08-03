import 'package:flutter/material.dart';
import 'package:mesai_application_1/addovertime/add_overtime_page.dart';
import 'package:mesai_application_1/home/home.dart';
import 'package:mesai_application_1/addovertime/add_overtime_page.dart';

class OvertimeAddButton extends StatefulWidget {
  const OvertimeAddButton({Key? key}) : super(key: key);

  @override
  State<OvertimeAddButton> createState() => _OvertimeAddButtonState();
}

class _OvertimeAddButtonState extends State<OvertimeAddButton> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: MaterialButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => AddOvertimePage()),
              );
            },
            child: Container(
              height: 50,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(0),
                color: const Color(0xffF9A825),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.black38,
                    offset: Offset(
                      2.0,
                      2.0,
                    ),
                    blurRadius: 8.0,
                    spreadRadius: 1.0,
                  ),
                ],
              ),
              child: const Center(
                  child: Text("Add Overtime",
                      style: TextStyle(
                        fontWeight: FontWeight.w900,
                        color: Color(0xff0D47A1),
                        fontSize: 19,
                        fontStyle: FontStyle.italic,
                      ))),
            ),
          ),
        ),
      ],
    );
  }
}
