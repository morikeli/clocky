import 'package:flutter/material.dart';


/* 
  countryCards are custom cards that display:
    1. country name and city, e.g. `New York, USA`
    2. timezone in GMT
    3. current time in the mentioned country
    4. time period - am or pm
    5. image of the famous landmark in the country, e.g. Eiffel Tower in Paris, France; Statue of Liberty in New York, USA
*/

Widget countryCards(
  BuildContext context,
  String countryName,
  String timeZone,
  String timeStamp,
  String timePeriod,
  String landmarkImagePath,
  ) {
  return Container(
    padding: const EdgeInsets.all(8.0),
    margin: const EdgeInsets.symmetric(horizontal: 12.0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        countryCardHeader(context, countryName),
        countryTimeZone(context, timeZone),
        countryLandmarkAndTimeStamp(landmarkImagePath, context, timeStamp, timePeriod)
      ],
    ),
  );
}

Row countryLandmarkAndTimeStamp(
    String landmarkImagePath, BuildContext context, String timeStamp, timePeriod) {
  return Row(
    children: [
      Image.asset(landmarkImagePath, height: 50.0),
      const Spacer(),
      Text(timeStamp, style: Theme.of(context).textTheme.labelLarge),
      RotatedBox(
          quarterTurns: 3,
          child: Text(timePeriod, style: Theme.of(context).textTheme.labelSmall)),
    ],
  );
}

Text countryTimeZone(BuildContext context, timeZone) {
  return Text(
    timeZone,
    style: Theme.of(context).textTheme.labelSmall,
  );
}

Text countryCardHeader(BuildContext context, String countryName) {
  return Text(
    countryName,
    style: Theme.of(context).textTheme.labelMedium,
  );
}
