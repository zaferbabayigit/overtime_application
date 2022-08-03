import 'package:flutter/material.dart';
import 'package:overtime_application/style/color_class.dart';
import 'package:overtime_application/welcome_page/parts/button_welcome.dart';
import 'package:overtime_application/welcome_page/parts/image_welcome.dart';
import 'package:overtime_application/welcome_page/parts/text_welcome.dart';

import 'parts/image_welcome.dart';

class Welcome extends StatefulWidget {
  const Welcome({Key? key}) : super(key: key);

  @override
  State<Welcome> createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorClass.scaffoldBackground,
      body: SingleChildScrollView(
        child: Column(
          children: const [
            ImageWelcome(),
            SizedBox(
              height: 70,
            ),
            TextWelcome(),
            SizedBox(
              height: 70,
            ),
            ButtonWelcome()
          ],
        ),
      ),
    );
  }
}
