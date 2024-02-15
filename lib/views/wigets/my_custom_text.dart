import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  final double size;
  final Color color;
  final FontWeight fontWight;
  final String text;
  const CustomText({
    super.key,
    required this.size,
    required this.color,
    required this.fontWight,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(color: color  , fontSize: size , fontWeight: fontWight),
    );
  }
}
