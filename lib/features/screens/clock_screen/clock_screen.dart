import 'package:clock_app/features/screens/clock_screen/components/analog_clock_widget.dart';
import 'package:clock_app/features/screens/clock_screen/components/appbar.dart';
import 'package:clock_app/features/screens/clock_screen/components/country_cards.dart';
import 'package:clock_app/features/screens/clock_screen/components/current_time_widget.dart';
import 'package:flutter/material.dart';

class ClockScreen extends StatefulWidget {
  const ClockScreen({super.key});

  @override
  State<ClockScreen> createState() => _ClockScreenState();
}

class _ClockScreenState extends State<ClockScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(),
      body: SizedBox(
        width: double.infinity,
        child: Column(
          children: [
            Text(
              'Nairobi, Kenya | EAT',
              style: Theme.of(context).textTheme.titleMedium,
            ),
            const CurrentTimeWidget(),
            const AnalogClock(),
            const CountryCards(),
          ],
        ),
      ),
    );
  }
}
