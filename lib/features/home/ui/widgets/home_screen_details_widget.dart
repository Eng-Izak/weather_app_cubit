import 'package:flutter/material.dart';
import 'package:weather_app_cubit/core/constants/screen_size_config.dart';
import 'package:weather_app_cubit/features/city_screen/ui/city_screen.dart';
import 'package:weather_app_cubit/features/home/data/models/city_temp_details_model.dart';
import 'package:weather_app_cubit/features/home/ui/widgets/city_card_widget.dart';
import 'package:weather_app_cubit/features/home/ui/widgets/home_screen_buttom_widget.dart';
import 'package:weather_app_cubit/features/home/ui/widgets/search_field_widget.dart';

class HomeScreenDetailsWidget extends StatelessWidget {
  const HomeScreenDetailsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    List<CityTempDetailsModel> citiesCardsTest = [
      CityTempDetailsModel(
        cityName: 'Cairo',
        subDetails: 'AQT 53  35/25',
        tempDegree: 28,
        hourTempDegrees: {8: 18, 9: 24, 10: 22, 11: 26, 12: 25},
      ),
      CityTempDetailsModel(
        cityName: 'Alex',
        subDetails: 'AQT 53  38/25',
        tempDegree: 14,
        hourTempDegrees: {8: 18, 9: 24, 10: 22, 11: 26, 12: 25},
      ),
      CityTempDetailsModel(
        cityName: 'Giza',
        subDetails: 'AQT 53  28/25',
        tempDegree: 20,
        hourTempDegrees: {8: 18, 9: 24, 10: 22, 11: 26, 12: 25},
      ),
    ];
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        SizedBox(height: 30),
        SearchFieldWidget(),
        Spacer(),
        SizedBox(
          height: ScreenSizeConfig.screenHigh * .4,
          width: ScreenSizeConfig.screenWidth * .85,
          child: ListView.separated(
            shrinkWrap: true,
            itemBuilder: (context, index) => CityCardWidget(
              cityName: citiesCardsTest[index].cityName,
              details: citiesCardsTest[index].subDetails,
              tempDegree: citiesCardsTest[index].tempDegree,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => CityScreen(
                      cityName: citiesCardsTest[index].cityName,
                      tempDegree: citiesCardsTest[index].tempDegree,
                      hourTempDegrees: citiesCardsTest[index].hourTempDegrees,
                    ),
                  ),
                );
              },
            ),
            separatorBuilder: (context, index) => SizedBox(height: 5),
            itemCount: citiesCardsTest.length,
          ),
        ),
        Spacer(),

        HomeScreenButtomWidget(),
      ],
    );
  }
}
