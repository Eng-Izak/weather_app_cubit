import 'package:flutter/material.dart';
import 'package:weather_app_cubit/core/constants/screen_size_config.dart';
import 'package:weather_app_cubit/core/theme/theme_data.dart';

class LetsStartButtonWidget extends StatelessWidget {
  const LetsStartButtonWidget({super.key, required this.onTap});
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
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
      child: InkWell(
        onTap: onTap,
        child: Text(
          "Let's Start",
          style: TextStyle(
            color: Colors.white,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
