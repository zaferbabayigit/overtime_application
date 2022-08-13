import 'package:flutter/material.dart';
import 'package:overtime_application/saveovertime/save_overtime_page.dart';
import 'package:overtime_application/style/color_class.dart';
import 'package:auto_size_text/auto_size_text.dart';

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
          MaterialPageRoute(builder: (context) => OvertimeSavePage()),
        );
      },
      child: Container(
        height: 100,
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
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Icon(
                Icons.calendar_month,
                color: ColorClass.textcolor,
                size: 50,
              ),
            ),
            SizedBox(
              width: 20,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.all(.0),
                  child: AutoSizeText("OVERTIME",
                      maxLines: 1,
                      minFontSize: 10,
                      wrapWords: true,
                      style: TextStyle(
                        fontWeight: FontWeight.w900,
                        color: ColorClass.textcolor,
                        fontSize: 20,
                        fontStyle: FontStyle.italic,
                      )),
                ),
                Padding(
                  padding: EdgeInsets.all(.0),
                  child: AutoSizeText("REGISTRATION",
                      maxLines: 1,
                      minFontSize: 10,
                      wrapWords: true,
                      style: TextStyle(
                        fontWeight: FontWeight.w900,
                        color: ColorClass.textcolor,
                        fontSize: 20,
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
