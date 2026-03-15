class CityTempDetailsModel {
  final String cityName;
  final String subDetails;
  final Map<int, int> hourTempDegrees;
  final int tempDegree;
  CityTempDetailsModel({
    required this.cityName,
    required this.subDetails,
    required this.tempDegree,
    required this.hourTempDegrees,
  });
}
