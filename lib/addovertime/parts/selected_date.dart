import 'package:flutter/material.dart';

class SelectedDate extends StatelessWidget {
  const SelectedDate({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 350,
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
      child: const Padding(
        padding: EdgeInsets.all(10.0),
        child: Text("31.07.2022",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontWeight: FontWeight.w900,
              color: Color(0xff0D47A1),
              fontSize: 19,
              fontStyle: FontStyle.italic,
            )),
      ),
    );
  }
}
