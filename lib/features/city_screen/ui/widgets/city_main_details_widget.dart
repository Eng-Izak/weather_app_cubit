import 'package:flutter/material.dart';
import 'package:weather_app_cubit/core/constants/screen_size_config.dart';
import 'package:weather_app_cubit/features/city_screen/ui/widgets/sub_temp_details_widget.dart';

class CityMainDetailsWidget extends StatelessWidget {
  const CityMainDetailsWidget({
    super.key,
    required this.cityName,
    required this.tempDegree,
  });

  final String cityName;
  final int tempDegree;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: ScreenSizeConfig.screenHigh * .70,
      width: ScreenSizeConfig.screenWidth,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.blue,
            // offset: Offset.,
            blurRadius: 15,
            spreadRadius: 1,
            blurStyle: BlurStyle.outer,
          ),
        ],
        color: Colors.blueAccent,
        borderRadius: BorderRadius.vertical(bottom: Radius.circular(62)),
      ),
      child: Column(
        children: [
          SizedBox(height: ScreenSizeConfig.screenHigh * .05),
          Row(
            children: [
              SizedBox(width: ScreenSizeConfig.screenWidth * .05),
              GestureDetector(
                onTap: () => Navigator.pop(context),
                child: Icon(
                  Icons.arrow_back_ios,
                  size: 18,
                  color: Colors.black.withAlpha((255 * .35).toInt()),
                ),
              ),
              SizedBox(width: ScreenSizeConfig.screenWidth * .25),
              Icon(Icons.location_on_outlined, color: Colors.white, size: 18),
              Text(
                cityName,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  decoration: TextDecoration.none,
                ),
              ),
            ],
          ),
          tempDegree <= 18
              ? Image.asset(
                  "assets/images/3.png",
                  height: ScreenSizeConfig.screenHigh * .27,
                )
              : (tempDegree > 18 && tempDegree <= 22
                    ? Image.asset(
                        "assets/images/1.png",
                        height: ScreenSizeConfig.screenHigh * .27,
                      )
                    : Image.asset(
                        "assets/images/2.png",
                        height: ScreenSizeConfig.screenHigh * .27,
                      )),
          Text(
            "$tempDegree",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w900,
              fontSize: ScreenSizeConfig.screenHigh * .13,
              decoration: TextDecoration.none,
            ),
          ),
          Text(
            "THunderPurrs",
            style: TextStyle(
              color: Colors.white,
              fontSize: ScreenSizeConfig.screenHigh * .03,
              decoration: TextDecoration.none,
            ),
          ),
          Text(
            "Wednesday, 14 Mar",
            style: TextStyle(
              color: Colors.white.withAlpha(100),
              fontSize: ScreenSizeConfig.screenHigh * .015,
              decoration: TextDecoration.none,
            ),
          ),
          Divider(color: Colors.white.withAlpha(70), indent: 50, endIndent: 50),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SubTempDetailsWidget(
                icon: Icons.wrap_text_outlined,
                txt: '26 Km/h',
                subTxt: 'Windy Fur',
              ),
              SubTempDetailsWidget(
                icon: Icons.water_drop_outlined,
                txt: '32 %',
                subTxt: 'Wet Fur',
              ),
              SubTempDetailsWidget(
                icon: Icons.water,
                txt: '90 %',
                subTxt: 'Windy Paws',
              ),
            ],
          ),
        ],
      ),
    );
  }
}
