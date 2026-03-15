import 'package:flutter/material.dart';
import 'package:weather_app_cubit/features/home/ui/home_screen.dart';
import 'package:weather_app_cubit/features/splash/ui/splash_screen.dart';

class AppRoutes {
  Route? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case "/":
        return MaterialPageRoute(builder: (_) => SplashScreen());
      case "homeScreen":
        return MaterialPageRoute(builder: (_) => HomeScreen());

      default:
        return null;
    }
  }
}
