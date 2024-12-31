class TzInfo {
  final String countryName;
  final String timeZone;
  final String landmarkImagePath;
  final String timeStamp;
  final String timePeriod;

  TzInfo({
    required this.countryName,
    required this.timeZone,
    required this.timeStamp,
    required this.timePeriod,
    this.landmarkImagePath = '',
  });
}

List<TzInfo> timeZoneDetails = [
  TzInfo(
    countryName: 'New York, USA',
    timeZone: '-5HRS | GMT',
    timeStamp: '12:20',
    timePeriod: 'PM',
    landmarkImagePath: 'assets/icons/statue-of-liberty.png',

  ),
  TzInfo(
    countryName: 'Paris, France',
    timeZone: '+2HRS | GMT',
    timeStamp: '15:20',
    timePeriod: 'PM',
    landmarkImagePath: 'assets/icons/eiffel-tower.png',

  ),
  TzInfo(
    countryName: 'Sydney, Australia',
    timeZone: '10HRS | GMT',
    timeStamp: '21:20',
    timePeriod: 'AM',
    landmarkImagePath: 'assets/icons/opera-house.png',

  ),
];
