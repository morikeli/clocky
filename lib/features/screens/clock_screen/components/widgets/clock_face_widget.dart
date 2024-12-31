import 'dart:math';

import 'package:clock_app/features/screens/clock_screen/utils/clock_painter.dart';
import 'package:clock_app/utils/constants/colors.dart';
import 'package:flutter/material.dart';

Widget clockFace(BuildContext context, DateTime currentTime) {
  return AspectRatio(
    aspectRatio: 1.3,
    child: Container(
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            blurRadius: 64.0,
            color: kShadowColor.withOpacity(.14),
            offset: const Offset(0, 0),
          ),
        ],
        color: Theme.of(context).colorScheme.surface,
        shape: BoxShape.circle,
      ),
      child: Transform.rotate(
        angle: -pi / 2,
        child: CustomPaint(
          painter: ClockPainter(context, currentTime),
        ),
      ),
    ),
  );
}
