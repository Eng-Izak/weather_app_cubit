import 'package:flutter/material.dart';
import 'package:weather_app_cubit/core/app_routes/app_routes.dart';

class WeatherApp extends StatelessWidget {
  const WeatherApp({required this.appRouter, super.key});
  final AppRoutes appRouter;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Weather App",
      initialRoute: "/",
      onGenerateRoute: appRouter.generateRoute,
    );
  }
}
