import 'package:flutter/material.dart';

class SubTempDetailsWidget extends StatelessWidget {
  const SubTempDetailsWidget({
    super.key,
    required this.icon,
    required this.txt,
    required this.subTxt,
  });
  final IconData icon;
  final String txt;
  final String subTxt;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(icon, color: Colors.white),
        Text(
          txt,
          style: TextStyle(
            color: Colors.white,
            fontSize: 14,
            decoration: TextDecoration.none,
          ),
        ),
        Text(
          subTxt,
          style: TextStyle(
            color: Colors.white,
            fontSize: 14,
            decoration: TextDecoration.none,
          ),
        ),
      ],
    );
  }
}
