import 'package:clock_app/utils/constants/colors.dart';
import 'package:flutter/material.dart';
import 'dart:math';


class ClockPainter extends CustomPainter {
  final BuildContext context;
  final DateTime currentTime;

  ClockPainter(this.context, this.currentTime);

  @override
  void paint(Canvas canvas, Size size) {
    double centerX = size.width / 2;
    double centerY = size.height / 2;
    Offset center = Offset(centerX, centerY);

    // calculate and position second hand in the current second position
    /*
      1. "size.width * .4" is the line height
      2. "currentTime.second * 6" because 360/60 = 6
    */
    double secondX = centerX + size.width * .28 * cos((currentTime.second * 6) * pi / 180);
    double secondY = centerY + size.width * .28 * sin((currentTime.second * 6) * pi / 180);

    // calculate and position minute hand in the current minute
    double minuteX = centerX + size.width * .28 * cos((currentTime.minute * 6) * pi / 180);
    double minuteY = centerY + size.width * .28 * sin((currentTime.minute * 6) * pi / 180);

    // calculate and position the hour hand in the current hour
    double hourX = centerX + size.width * .2 * cos((currentTime.hour * 30 + currentTime.minute * .5) * pi / 180);
    double hourY = centerY + size.width * .2 * sin((currentTime.hour * 30 + currentTime.minute * .5) * pi / 180);
    
    // draw hour hand 
    canvas.drawLine(center, Offset(hourX, hourY), Paint()..color = kAccentDarkColor..style=PaintingStyle.stroke..strokeWidth = 10.0);

    // draw minute hand 
    canvas.drawLine(center, Offset(minuteX, minuteY), Paint()..color = kAccentColor..style=PaintingStyle.stroke..strokeWidth = 10.0);
    
    // draw seconds hand
    canvas.drawLine(center, Offset(secondX, secondY), Paint()..color = Colors.red.shade900);


    // draw center dots
    Paint dotPainter = Paint()..color = Theme.of(context).primaryIconTheme.color!;
    canvas.drawCircle(center, 16.0, dotPainter);
    canvas.drawCircle(center, 15.0, Paint()..color = Colors.white);
    canvas.drawCircle(center, 5.0, dotPainter);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }

}