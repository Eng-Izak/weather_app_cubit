import 'package:flutter/material.dart';
import 'package:weather_app_cubit/features/splash/ui/splash_screen.dart';

class WeatherApp extends StatelessWidget {
  const WeatherApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: SplashScreen());
  }
}
