import 'package:flutter/material.dart';
import 'package:overtime_application/home/home.dart';
import 'package:overtime_application/style/color_class.dart';

class BuyButton extends StatefulWidget {
  BuyButton({Key? key}) : super(key: key);

  @override
  State<BuyButton> createState() => _BuyButtonState();
}

class _BuyButtonState extends State<BuyButton> {
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const Home()),
        );
      },
      child: Container(
        height: 60,
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
        child: Center(
            child: Text("Buy",
                style: TextStyle(
                  fontWeight: FontWeight.w900,
                  color: ColorClass.textcolor,
                  fontSize: 16,
                  fontStyle: FontStyle.italic,
                ))),
      ),
    );
  }
}
