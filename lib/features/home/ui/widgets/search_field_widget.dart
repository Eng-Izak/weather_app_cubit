import 'package:flutter/material.dart';
import 'package:weather_app_cubit/core/constants/screen_size_config.dart';

class SearchFieldWidget extends StatelessWidget {
  const SearchFieldWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: ScreenSizeConfig.screenHigh * .06,
      width: ScreenSizeConfig.screenWidth * .9,
      decoration: BoxDecoration(
        color: Color(0xff979797).withAlpha((255 * .42).toInt()),
        borderRadius: BorderRadius.circular(24),
      ),
      margin: EdgeInsets.all(15),
      child: TextFormField(
        decoration: InputDecoration(
          border: InputBorder.none,
          prefixIcon: Icon(Icons.search, color: Colors.white),
          hintText: "Enter Location",
          hintStyle: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
