import 'package:flutter/material.dart';

class HomeSplashCenterLogoWidget extends StatelessWidget {
  const HomeSplashCenterLogoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset("assets/images/logo.png"),
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
