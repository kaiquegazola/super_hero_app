import 'package:flutter/material.dart';

class HeroSectionTitleWidget extends StatelessWidget {
  const HeroSectionTitleWidget({
    required this.title,
    required this.color,
    required this.fontSize,
  });

  final String title;
  final Color color;
  final double fontSize;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(
        color: color,
        fontSize: fontSize,
        shadows: const [
          BoxShadow(
            color: Colors.black,
            blurRadius: 2,
            offset: Offset(2, 2),
          ),
        ],
      ),
      textAlign: TextAlign.center,
    );
  }
}
