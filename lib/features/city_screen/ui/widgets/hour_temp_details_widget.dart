import 'package:flutter/material.dart';
import 'package:weather_app_cubit/core/constants/screen_size_config.dart';

class HourTempDetailsWidget extends StatelessWidget {
  const HourTempDetailsWidget({
    super.key,
    required this.hour,
    required this.tempDegree,
  });
  final int hour;
  final int tempDegree;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: ScreenSizeConfig.screenHigh * .13,
      width: ScreenSizeConfig.screenWidth * .1,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: Colors.white.withAlpha(100)),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "$tempDegree",
            style: TextStyle(
              color: Colors.white,
              fontSize: ScreenSizeConfig.screenHigh * .03,
              decoration: TextDecoration.none,
            ),
          ),
          Image.asset(
            "assets/images/1.png",
            height: ScreenSizeConfig.screenHigh * .05,
            width: ScreenSizeConfig.screenWidth * .2,
            fit: BoxFit.contain,
          ),
          Text(
            "$hour:00",
            style: TextStyle(
              color: Colors.white,

              fontSize: ScreenSizeConfig.screenHigh * .015,
              decoration: TextDecoration.none,
            ),
          ),
        ],
      ),
    );
  }
}
