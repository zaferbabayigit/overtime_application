import 'package:flutter/material.dart';
import 'package:mesai_application_1/addovertime/add_overtime_page.dart';

class CoefficientButton extends StatefulWidget {
  const CoefficientButton({Key? key}) : super(key: key);

  @override
  State<CoefficientButton> createState() => _CoefficientButtonState();
}

class _CoefficientButtonState extends State<CoefficientButton> {
  @override
  Widget build(BuildContext context) {
    return Column(
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
                  child: Text("Coefficient Change",
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
