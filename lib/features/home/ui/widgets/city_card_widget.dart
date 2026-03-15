import 'package:flutter/material.dart';
import 'package:weather_app_cubit/core/constants/screen_size_config.dart';

class CityCardWidget extends StatelessWidget {
  const CityCardWidget({
    super.key,
    required this.cityName,
    required this.details,
    required this.tempDegree,
    required this.onTap,
  });
  final String cityName;
  final String details;
  final int tempDegree;
  final void Function() onTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.all(16),
        height: ScreenSizeConfig.screenHigh * .2,
        width: ScreenSizeConfig.screenWidth * .85,
        decoration: BoxDecoration(
          color: Colors.blueAccent.withAlpha((255 * .44).toInt()),
          borderRadius: BorderRadius.circular(16),
        ),
        child: Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Spacer(),
                Text(
                  "  $cityName",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.w900,
                  ),
                ),
                Spacer(),
                Text(
                  details,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.w900,
                  ),
                ),
                Spacer(),
              ],
            ),
            Spacer(),
            Text(
              "$tempDegree",
              style: TextStyle(
                color: Colors.white,
                fontSize: 30,
                fontWeight: FontWeight.w900,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
