import 'package:flutter/material.dart';

class OvertimeLogin extends StatefulWidget {
  const OvertimeLogin({Key? key}) : super(key: key);

  @override
  State<OvertimeLogin> createState() => _OvertimeLoginState();
}

class _OvertimeLoginState extends State<OvertimeLogin> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
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
      child: Column(children: [
        const Padding(
          padding: EdgeInsets.all(8.0),
          child: Text("Overtime Coefficient : 2",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.w900,
                color: Color(0xff0D47A1),
                fontSize: 15,
                fontStyle: FontStyle.italic,
              )),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                height: 80,
                width: 150,
                child: TextField(
                  keyboardType: TextInputType.number,
                  textInputAction: TextInputAction.go,
                  cursorColor: Colors.orange,
                  decoration: InputDecoration(
                      suffixIcon: Icon(Icons.watch_later),
                      filled: true,
                      fillColor: Color(0xffB3E5FC),
                      labelText: "Hours :",
                      labelStyle: TextStyle(
                        fontSize: 17,
                      ),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(0)))),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                height: 80,
                width: 150,
                child: TextField(
                  keyboardType: TextInputType.number,
                  textInputAction: TextInputAction.go,
                  cursorColor: Colors.orange,
                  decoration: InputDecoration(
                      suffixIcon: Icon(Icons.watch_later),
                      filled: true,
                      fillColor: Color(0xffB3E5FC),
                      labelText: "Minute :",
                      labelStyle: TextStyle(
                        fontSize: 16,
                      ),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(0)))),
                ),
              ),
            ),
          ],
        ),
        const Padding(
          padding: EdgeInsets.all(8.0),
          child: Text("Total Work Coefficient : 0",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.w900,
                color: Color(0xff0D47A1),
                fontSize: 15,
                fontStyle: FontStyle.italic,
              )),
        ),
      ]),
    );
  }
}
