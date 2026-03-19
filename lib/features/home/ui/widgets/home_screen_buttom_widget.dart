import 'package:flutter/material.dart';
import 'package:weather_app_cubit/core/constants/screen_size_config.dart';
import 'package:weather_app_cubit/core/shared/widgets/home_splash_logo_widget.dart';

class HomeScreenButtomWidget extends StatelessWidget {
  const HomeScreenButtomWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: ScreenSizeConfig.screenHigh * .4,
      width: ScreenSizeConfig.screenWidth,
      child: Stack(
        clipBehavior: Clip.none,
        alignment: AlignmentGeometry.bottomCenter,
        children: [
          Positioned(
            bottom: -ScreenSizeConfig.screenWidth * 1.3,
            child: Container(
              height: ScreenSizeConfig.screenWidth * 2,
              width: ScreenSizeConfig.screenWidth * 2,
              decoration: BoxDecoration(
                color: Color(0xff001AFF).withAlpha((255 * .3).toInt()),
                shape: BoxShape.circle,
                // borderRadius: BorderRadius.vertical(top: Radius.circular(500)),
              ),
            ),
          ),
          SizedBox(
            width: ScreenSizeConfig.screenWidth * .7,
            height: ScreenSizeConfig.screenHigh * .4,
            child: HomeSplashLogoWidget(),
          ),
        ],
      ),
    );
  }
}
