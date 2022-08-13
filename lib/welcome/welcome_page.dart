import 'package:flutter/material.dart';
import 'package:overtime_application/style/color_class.dart';
import 'package:overtime_application/welcome/parts/button_welcome.dart';
import 'package:overtime_application/welcome/parts/image_welcome.dart';
import 'package:overtime_application/welcome/parts/text_welcome.dart';

import 'parts/image_welcome.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
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
