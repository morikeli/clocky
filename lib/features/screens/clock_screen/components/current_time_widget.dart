import 'package:clock_app/features/screens/clock_screen/components/widgets/time_flip_card.dart';
import 'package:flip_panel_plus/flip_panel_plus.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'dart:async';


class CurrentTimeWidget extends StatefulWidget {
  const CurrentTimeWidget({super.key});

  @override
  State<CurrentTimeWidget> createState() => _CurrentTimeWidgetState();
}

class _CurrentTimeWidgetState extends State<CurrentTimeWidget> {
  late DateTime _currentTime = DateTime.now();

  @override
  void initState() {
    super.initState();
    Timer.periodic(const Duration(seconds: 1), (timer) {
      if (_currentTime.minute != DateTime.now().minute) {
        setState(() {
          _currentTime = DateTime.now();
        });

      }
    });
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: Research how to access AM/PM string using `intl` package

    String timeperiod = DateFormat.jm().format(_currentTime)[5] == 'A' ? 'AM' : 'PM';


    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        FlipPanelPlus.builder(
          itemBuilder: (context, value) {
            return Row(
              children: [
                timeFlipCard(context, DateFormat.H().format(_currentTime)), // Flip card to display current hour
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Text(':', style: Theme.of(context).textTheme.titleLarge),
                ),
                timeFlipCard(context, DateFormat.m().format(_currentTime)), // Flip card to display minutes
              ],
            );
          },
          itemsCount: 1,
          period: const Duration(seconds: 1),
        ),
        const SizedBox(width: 5.0),
        RotatedBox(
          quarterTurns: 3,
          child: Text(
            timeperiod,
            style: Theme.of(context).textTheme.titleSmall,
          ),
        ),
      ],
    );
  }
}
