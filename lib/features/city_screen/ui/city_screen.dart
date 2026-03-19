import 'package:flutter/material.dart';
import 'package:weather_app_cubit/core/constants/screen_size_config.dart';
import 'package:weather_app_cubit/features/city_screen/ui/widgets/city_main_details_widget.dart';
import 'package:weather_app_cubit/features/city_screen/ui/widgets/hour_temp_details_widget.dart';
import 'package:weather_app_cubit/features/days_screen/ui/days_screen.dart';

class CityScreen extends StatelessWidget {
  const CityScreen({
    super.key,
    required this.cityName,
    required this.tempDegree,
    required this.hourTempDegrees,
  });
  final String cityName;
  final int tempDegree;
  final Map<int, int> hourTempDegrees;

  @override
  Widget build(BuildContext context) {
    List<HourTempDetailsWidget> hourTempCardsListTest = [
      HourTempDetailsWidget(hour: 8, tempDegree: 15),
      HourTempDetailsWidget(hour: 9, tempDegree: 18),
      HourTempDetailsWidget(hour: 10, tempDegree: 20),
      HourTempDetailsWidget(hour: 11, tempDegree: 25),
      HourTempDetailsWidget(hour: 12, tempDegree: 27),
    ];
    return Container(
      color: Colors.black87,
      height: ScreenSizeConfig.screenHigh,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          CityMainDetailsWidget(cityName: cityName, tempDegree: tempDegree),
          SizedBox(height: ScreenSizeConfig.screenHigh * .031),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                "Today",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: ScreenSizeConfig.screenHigh * .025,
                  decoration: TextDecoration.none,
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => DaysScreen()),
                  );
                },
                child: Text(
                  "7 Days",
                  style: TextStyle(
                    color: Colors.white.withAlpha(100),
                    fontSize: ScreenSizeConfig.screenHigh * .022,
                    decoration: TextDecoration.none,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: ScreenSizeConfig.screenHigh * .18,
            width: ScreenSizeConfig.screenWidth,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) => HourTempDetailsWidget(
                hour: hourTempCardsListTest[index].hour,
                tempDegree: hourTempCardsListTest[index].tempDegree,
              ),
              separatorBuilder: (context, index) => SizedBox(width: 5),
              itemCount: hourTempCardsListTest.length,
            ),
          ),
        ],
      ),
    );
  }
}
