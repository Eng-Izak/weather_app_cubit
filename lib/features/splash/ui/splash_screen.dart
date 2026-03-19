import 'package:flutter/material.dart';
import 'package:weather_app_cubit/core/constants/screen_size_config.dart';
import 'package:weather_app_cubit/core/shared/widgets/home_splash_logo_widget.dart';
import 'package:weather_app_cubit/core/theme/theme_data.dart';
import 'package:weather_app_cubit/features/splash/ui/widgets/lets_start_button_widget.dart';

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
            colors: [
              AppThemeData.primaryColor1.withAlpha(200),
              AppThemeData.primaryColor2,
            ],
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            HomeSplashLogoWidget(),
            LetsStartButtonWidget(
              onTap: () {
                Navigator.pushReplacementNamed(context, "homeScreen");
              },
            ),
          ],
        ),
      ),
    );
  }
}
