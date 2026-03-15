import 'package:flutter/material.dart';
import 'package:weather_app_cubit/core/constants/screen_size_config.dart';
import 'package:weather_app_cubit/core/shared/widgets/home_splash_logo_widget.dart';

class HomeScreenButtomWidget extends StatelessWidget {
  const HomeScreenButtomWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: AlignmentGeometry.bottomCenter,
      children: [
        Container(
          height: ScreenSizeConfig.screenHigh * .4,
          width: double.infinity,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: AlignmentGeometry.bottomCenter,
              end: AlignmentGeometry.topCenter,
              colors: [
                Color(0xff001AFF).withAlpha((255 * .68).toInt()),
                Color(0xffFFFFFF).withAlpha((255 * .68).toInt()),
              ],
            ),
            borderRadius: BorderRadius.vertical(top: Radius.circular(190)),
          ),
        ),
        SizedBox(
          width: ScreenSizeConfig.screenWidth * .7,
          height: ScreenSizeConfig.screenHigh * .4,
          child: HomeSplashLogoWidget(),
        ),
      ],
    );
  }
}
