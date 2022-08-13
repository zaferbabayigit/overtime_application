import 'package:flutter/material.dart';
import 'package:overtime_application/style/color_class.dart';

class RemoveAdsText extends StatefulWidget {
  RemoveAdsText({Key? key}) : super(key: key);

  @override
  State<RemoveAdsText> createState() => _RemoveAdsTextState();
}

class _RemoveAdsTextState extends State<RemoveAdsText> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 30,
          width: MediaQuery.of(context).size.width,
          color: ColorClass.buttoncolor,
          child: Text(
            'OVERTIME CALCULATION',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontWeight: FontWeight.w900,
              color: ColorClass.textcolor,
              fontSize: 24,
              fontStyle: FontStyle.italic,
            ),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Container(
          height: 90,
          width: MediaQuery.of(context).size.width,
          color: ColorClass.buttoncolor,
          child: Text(
            "By purchasing it once, you can use all its features Ad-Free for Life.",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontWeight: FontWeight.w900,
              color: ColorClass.textcolor,
              fontSize: 24,
              fontStyle: FontStyle.italic,
            ),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Container(
          height: 30,
          width: MediaQuery.of(context).size.width,
          color: ColorClass.buttoncolor,
          child: Text(
            'Price: 29,99₺',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontWeight: FontWeight.w900,
              color: ColorClass.textcolor,
              fontSize: 24,
              fontStyle: FontStyle.italic,
            ),
          ),
        )
      ],
    );
  }
}
