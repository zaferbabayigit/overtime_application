import 'package:flutter/material.dart';
import 'package:overtime_application/home/parts/remove_ads_button.dart';
import 'package:overtime_application/remove%20ads/parts/image_remove_ads.dart';
import 'package:overtime_application/remove%20ads/parts/remove_ads_button.dart';
import 'package:overtime_application/remove%20ads/parts/remove_ads_text.dart';
import 'package:overtime_application/remove%20ads/parts/remove_ads_textbutton.dart';
import 'package:overtime_application/style/color_class.dart';
import 'package:overtime_application/welcome/parts/image_welcome.dart';
import 'package:overtime_application/welcome/parts/text_welcome.dart';

class RemoveAdsPage extends StatefulWidget {
  RemoveAdsPage({Key? key}) : super(key: key);

  @override
  State<RemoveAdsPage> createState() => _RemoveAdsPageState();
}

class _RemoveAdsPageState extends State<RemoveAdsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorClass.scaffoldBackground,
        foregroundColor: ColorClass.textcolor,
      ),
      body: SingleChildScrollView(
          child: Column(
        children: [
          SizedBox(
            height: 30,
          ),
          ImageRemoveAds(),
          SizedBox(
            height: 30,
          ),
          SizedBox(
            height: 30,
          ),
          RemoveAdsText(),
          SizedBox(
            height: 30,
          ),
          BuyButton(),
          SizedBox(
            height: 30,
          ),
          AHSbutton()
        ],
      )),
    );
  }
}
