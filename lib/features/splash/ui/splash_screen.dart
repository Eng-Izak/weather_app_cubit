import 'package:flutter/material.dart';
import 'package:weather_app_cubit/core/constants/screen_size_config.dart';
import 'package:weather_app_cubit/core/shared/widgets/home_splash_center_logo_widget.dart';
import 'package:weather_app_cubit/core/theme/theme_data.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    ScreenSizeConfig().init(context);
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: AlignmentGeometry.topRight,
            end: AlignmentGeometry.bottomLeft,
            colors: [primaryColor1.withAlpha(200), primaryColor2],
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            HomeSplashCenterLogoWidget(),
            Container(
              alignment: Alignment.center,
              height: ScreenSizeConfig.screenHigh * .06,
              width: ScreenSizeConfig.screenWidth * .4,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                gradient: RadialGradient(
                  radius: 3,
                  colors: [primaryColor1.withAlpha(200), primaryColor2],
                ),
              ),
              child: Text(
                "Let's Start",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
