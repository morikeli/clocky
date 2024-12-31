import 'package:clock_app/utils/constants/colors.dart';
import 'package:flutter/material.dart';


class ClockAppBarTheme {
  ClockAppBarTheme._();

  static AppBarTheme lightAppBar = const AppBarTheme().copyWith(
    backgroundColor: kAppBarBgColor,
    elevation: 0,
  );

  static AppBarTheme darkkAppBar = const AppBarTheme().copyWith(
    backgroundColor: kAppBarBgDarkColor,
    elevation: 0,
  );
}