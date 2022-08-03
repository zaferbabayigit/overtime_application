import 'package:flutter/material.dart';
import 'package:mesai_application_1/welcome_page/parts/button_welcome.dart';
import 'package:mesai_application_1/welcome_page/parts/image_welcome.dart';
import 'package:mesai_application_1/welcome_page/parts/text_welcome.dart';

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
      backgroundColor: const Color(0xffB3E5FC),
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
