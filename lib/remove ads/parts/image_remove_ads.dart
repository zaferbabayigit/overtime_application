import 'package:flutter/material.dart';
import 'package:overtime_application/style/color_class.dart';

class ImageRemoveAds extends StatefulWidget {
  ImageRemoveAds({Key? key}) : super(key: key);

  @override
  State<ImageRemoveAds> createState() => _ImageRemoveAdsState();
}

class _ImageRemoveAdsState extends State<ImageRemoveAds> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width * .8,
      height: size.height * .2,
      decoration: BoxDecoration(
        shape: BoxShape.rectangle,
        image: const DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage('assets/timeandmany.png'),
        ),
      ),
    );
  }
}
