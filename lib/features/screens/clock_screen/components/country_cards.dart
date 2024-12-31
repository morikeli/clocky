import 'package:clock_app/features/screens/clock_screen/components/widgets/country_card_widget.dart';
import 'package:clock_app/features/screens/clock_screen/models/tz_info.dart';
import 'package:flutter/material.dart';

class CountryCards extends StatelessWidget {
  const CountryCards({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: List.generate(
          timeZoneDetails.length,
          (index) => SizedBox(
            width: MediaQuery.of(context).size.width * .6,
            child: countryCards(
              context,
              timeZoneDetails[index].countryName,
              timeZoneDetails[index].timeZone,
              timeZoneDetails[index].timeStamp,
              timeZoneDetails[index].timePeriod,
              timeZoneDetails[index].landmarkImagePath,
            ),
          ),
        ),
      ),
    );
  }
}
