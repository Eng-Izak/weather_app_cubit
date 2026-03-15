import 'package:flutter/material.dart';
import 'package:weather_app_cubit/core/constants/screen_size_config.dart';

class HomeSplashLogoWidget extends StatelessWidget {
  const HomeSplashLogoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          "assets/images/logo.png",
          height: ScreenSizeConfig.screenHigh * .25,
        ),
        Text(
          "Weather",
          style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
        ),
        Text(
          "@wolf",
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.bold,
            color: Colors.blueGrey.withAlpha(200),
          ),
        ),
      ],
    );
  }
}
