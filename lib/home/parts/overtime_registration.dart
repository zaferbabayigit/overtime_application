import 'package:flutter/material.dart';
import 'package:overtime_application/saveovertime/save_overtime_page.dart';
import 'package:overtime_application/style/color_class.dart';

class OvertimeRegistrationButton extends StatefulWidget {
  const OvertimeRegistrationButton({Key? key}) : super(key: key);

  @override
  State<OvertimeRegistrationButton> createState() =>
      _OvertimeRegistrationButtonState();
}

class _OvertimeRegistrationButtonState
    extends State<OvertimeRegistrationButton> {
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => MesaiKayitPage()),
        );
      },
      child: Container(
        height: 130,
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
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.all(20.0),
                  child: Icon(
                    Icons.calendar_month,
                    color: ColorClass.textcolor,
                    size: 70,
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Padding(
                  padding: EdgeInsets.all(20.0),
                  child: Text("OVERTIME REGISTRATION",
                      style: TextStyle(
                        fontWeight: FontWeight.w900,
                        color: ColorClass.textcolor,
                        fontSize: 14,
                        fontStyle: FontStyle.italic,
                      )),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
