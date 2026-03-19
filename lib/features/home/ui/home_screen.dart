import 'package:flutter/material.dart';
import 'package:weather_app_cubit/core/theme/theme_data.dart';
import 'package:weather_app_cubit/features/home/ui/widgets/home_screen_details_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: AlignmentGeometry.topRight,
            end: AlignmentGeometry.bottomLeft,
            colors: [
              AppThemeData.primaryColor1.withAlpha(200),
              AppThemeData.primaryColor2,
            ],
          ),
        ),
        child: HomeScreenDetailsWidget(),
      ),
    );
  }
}
