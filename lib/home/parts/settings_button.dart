import 'package:flutter/material.dart';
import 'package:mesai_application_1/welcome_page/welcome.dart';

class SettingsButton extends StatefulWidget {
  const SettingsButton({Key? key}) : super(key: key);

  @override
  State<SettingsButton> createState() => _SettingsButtonState();
}

class _SettingsButtonState extends State<SettingsButton> {
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const Welcome()),
        );
      },
      child: Container(
        height: 130,
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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              children: const [
                Padding(
                  padding: EdgeInsets.all(20.0),
                  child: Icon(
                    Icons.settings,
                    color: Color(0xff0D47A1),
                    size: 70,
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Padding(
                  padding: EdgeInsets.all(20.0),
                  child: Text("SETTINGS",
                      style: TextStyle(
                        fontWeight: FontWeight.w900,
                        color: Color(0xff0D47A1),
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
