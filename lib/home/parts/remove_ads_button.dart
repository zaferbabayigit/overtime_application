import 'package:flutter/material.dart';
import 'package:mesai_application_1/welcome_page/welcome.dart';

class RemoveAdsButton extends StatefulWidget {
  const RemoveAdsButton({Key? key}) : super(key: key);

  @override
  State<RemoveAdsButton> createState() => _RemoveAdsButtonState();
}

class _RemoveAdsButtonState extends State<RemoveAdsButton> {
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
        height: 100,
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
                    Icons.stars,
                    color: Color(0xff0D47A1),
                    size: 50,
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Padding(
                  padding: EdgeInsets.all(20.0),
                  child: Text("REMOVE ADS",
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
