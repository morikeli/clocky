import 'package:clock_app/utils/constants/colors.dart';
import 'package:flutter/material.dart';

Widget dayorNightTimeImageWidget() {
  return Positioned(
    top: 50,
    left: 0,
    right: 0,
    child: Image.asset(
      'assets/icons/sun-bw.png',
      height: 30.0,
      color: kPrimaryColor,
    ),
  );
}
