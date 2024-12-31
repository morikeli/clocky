import 'package:flutter/material.dart';


class ClockAppTextTheme {
  ClockAppTextTheme._();

  static TextTheme lightTextTheme = TextTheme(
    headlineLarge: const TextStyle().copyWith(color: Colors.black, fontSize: 32.0, fontFamily: 'Roboto-Bold', fontWeight: FontWeight.bold),
    headlineMedium: const TextStyle().copyWith(color: Colors.black, fontSize: 24.0, fontFamily: 'Roboto-Bold', fontWeight: FontWeight.w400),
    headlineSmall: const TextStyle().copyWith(color: Colors.black, fontSize: 16.0, fontFamily: 'Roboto-BoldItalic', fontWeight: FontWeight.w300),

    // titles
    titleLarge: const TextStyle().copyWith(color: Colors.black, fontSize: 68.0, fontFamily: 'Roboto-Bold', fontWeight: FontWeight.bold),
    titleMedium: const TextStyle().copyWith(color: Colors.black.withOpacity(.5), fontSize: 20.0, fontFamily: 'Roboto-Medium', fontWeight: FontWeight.w400),
    titleSmall: const TextStyle().copyWith(color: Colors.black.withOpacity(.5), fontSize: 16.0, fontFamily: 'Roboto-Bold'),

    // body text
    bodyLarge: const TextStyle().copyWith(color: Colors.black, fontSize: 16.0, fontFamily: 'Roboto-Regular', fontWeight: FontWeight.bold),
    bodyMedium: const TextStyle().copyWith(color: Colors.black, fontSize: 14.0, fontFamily: 'Roboto-Medium', fontWeight: FontWeight.w400),
    bodySmall: const TextStyle().copyWith(color: Colors.black.withOpacity(.5), fontSize: 10.0, fontFamily: 'Roboto-Italic'),

    // labels
    labelLarge: const TextStyle().copyWith(color: Colors.black, fontSize: 40.0, fontFamily: 'Roboto-Regular', fontWeight: FontWeight.normal),
    labelMedium: const TextStyle().copyWith(color: Colors.black, fontSize: 16.0, fontFamily: 'Roboto-Medium', fontWeight: FontWeight.w500),
    labelSmall: const TextStyle().copyWith(color: Colors.black.withOpacity(.5), fontSize: 12.0, fontFamily: 'Roboto-Italic'),

  );

  // Dark theme text
  static TextTheme darkTextTheme = TextTheme(
    headlineLarge: const TextStyle().copyWith(color: Colors.white, fontSize: 32.0, fontFamily: 'Roboto-Bold', fontWeight: FontWeight.bold),
    headlineMedium: const TextStyle().copyWith(color: Colors.white, fontSize: 24.0, fontFamily: 'Roboto-Bold', fontWeight: FontWeight.w400),
    headlineSmall: const TextStyle().copyWith(color: Colors.white, fontSize: 16.0, fontFamily: 'Roboto-BoldItalic', fontWeight: FontWeight.w300),

    // titles
    titleLarge: const TextStyle().copyWith(color: Colors.white, fontSize: 68.0, fontFamily: 'Roboto-Bold', fontWeight: FontWeight.bold),
    titleMedium: const TextStyle().copyWith(color: Colors.white.withOpacity(.5), fontSize: 20.0, fontFamily: 'Roboto-Medium', fontWeight: FontWeight.w400),
    titleSmall: const TextStyle().copyWith(color: Colors.white, fontSize: 16.0, fontFamily: 'Roboto-Bold'),

    // body text
    bodyLarge: const TextStyle().copyWith(color: Colors.white, fontSize: 16.0, fontFamily: 'Roboto-Regular', fontWeight: FontWeight.bold),
    bodyMedium: const TextStyle().copyWith(color: Colors.white, fontSize: 14.0, fontFamily: 'Roboto-Medium', fontWeight: FontWeight.w400),
    bodySmall: const TextStyle().copyWith(color: Colors.white.withOpacity(.5), fontSize: 10.0, fontFamily: 'Roboto-Italic'),

    // labels
    labelLarge: const TextStyle().copyWith(color: Colors.white, fontSize: 40.0, fontFamily: 'Roboto-Regular', fontWeight: FontWeight.normal),
    labelMedium: const TextStyle().copyWith(color: Colors.white, fontSize: 16.0, fontFamily: 'Roboto-Medium', fontWeight: FontWeight.w400),
    labelSmall: const TextStyle().copyWith(color: Colors.white.withOpacity(.5), fontSize: 12.0, fontFamily: 'Roboto-Italic'),
  );

}