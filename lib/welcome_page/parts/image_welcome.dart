import 'package:flutter/material.dart';
import 'package:overtime_application/style/color_class.dart';

class ImageWelcome extends StatefulWidget {
  const ImageWelcome({Key? key}) : super(key: key);

  @override
  State<ImageWelcome> createState() => _ImageWelcomeState();
}

class _ImageWelcomeState extends State<ImageWelcome> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Container(
      width: MediaQuery.of(context).size.width,
      height: size.height * .4,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(0),
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
        shape: BoxShape.rectangle,
        image: const DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage('assets/mesai.png'),
        ),
      ),
    );
  }
}
