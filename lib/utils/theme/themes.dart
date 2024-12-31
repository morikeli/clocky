import 'package:clock_app/utils/constants/colors.dart';
import 'package:clock_app/utils/theme/theme_data/appbar_theme_data.dart';
import 'package:clock_app/utils/theme/theme_data/icon_theme_data.dart';
import 'package:clock_app/utils/theme/theme_data/text_theme_data.dart';
import 'package:flutter/material.dart';


class ClockAppTheme {
  ClockAppTheme._();

  static ThemeData lightTheme = ThemeData(
    appBarTheme: ClockAppBarTheme.lightAppBar,
    brightness: Brightness.light,
    colorScheme: const ColorScheme.light(
      secondary: kSecondaryColor,
      surface: kSurfaceColor
    ),
    fontFamily: 'Roboto-Regular',
    
    iconTheme: ClockAppIconThemeData.iconThemeData,
    primaryIconTheme: ClockAppIconThemeData.iconThemeData,
    primaryColor: kPrimaryColor,
    scaffoldBackgroundColor: kScaffoldBgColor,
    textTheme: ClockAppTextTheme.lightTextTheme,
    useMaterial3: true,
  );

  // Dark theme
  static ThemeData darkTheme = ThemeData.dark(useMaterial3: true).copyWith(
    appBarTheme: ClockAppBarTheme.darkkAppBar,
    // brightness: Brightness.dark,
    colorScheme: const ColorScheme.dark(
      secondary: kSecondaryColor,
      surface: kSurfaceDarkColor
    ),
    iconTheme: ClockAppIconThemeData.iconDarkThemeData,
    primaryIconTheme: ClockAppIconThemeData.iconThemeData,
    primaryColor: kPrimaryColor,
    scaffoldBackgroundColor: kScaffoldDarkBgColor,
    textTheme: ClockAppTextTheme.darkTextTheme,
    // useMaterial3: true,
  );
}
