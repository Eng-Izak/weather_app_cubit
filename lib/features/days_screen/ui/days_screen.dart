import 'package:flutter/material.dart';
import 'package:weather_app_cubit/core/theme/theme_data.dart';

class DaysScreen extends StatelessWidget {
  const DaysScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("7 Dayssss"),
        centerTitle: true,
        backgroundColor: AppThemeData.primaryColor1,
      ),
    );
  }
}
