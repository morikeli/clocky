import 'dart:async';
import 'package:clock_app/features/screens/clock_screen/components/widgets/clock_face_widget.dart';
import 'package:clock_app/features/screens/clock_screen/components/widgets/day_or_night_time_widget.dart';
import 'package:flutter/material.dart';


class AnalogClock extends StatefulWidget {
  const AnalogClock({super.key});

  @override
  State<AnalogClock> createState() => _AnalogClockState();
}

class _AnalogClockState extends State<AnalogClock> {
  DateTime _currentTime = DateTime.now();

  @override
  void initState() {
    super.initState();
    Timer.periodic(const Duration(seconds: 1), (timer) {
      setState(() {
        _currentTime = DateTime.now();
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Padding(
          padding: const EdgeInsets.all(24.0),
          child: clockFace(context, _currentTime),  // clock face canvas 
        ),
        dayorNightTimeImageWidget()   // icon shown on the clock face
      ],
    );
  }

  

}
