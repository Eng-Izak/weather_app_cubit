import 'package:flutter/material.dart';

class ScreenSizeConfig {
  static late MediaQueryData _mediaQueryData;
  static late double screenWidth;
  static late double screenHigh;
  void init(BuildContext context) {
    _mediaQueryData = MediaQuery.of(context);
    screenHigh = _mediaQueryData.size.height;
    screenWidth = _mediaQueryData.size.width;
  }
}
