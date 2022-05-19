import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class CustomText extends StatelessWidget {
  final String text;

  final double fontSize;
  final FontWeight fontweight;

  final Color color;

  final Alignment alignment;

  final int maxLine;
  final double height;

  CustomText({
    this.text = '',
    this.fontSize = 16,
    this.color = Colors.black,
    this.fontweight = FontWeight.normal,
    this.alignment = Alignment.topLeft,
    required this.maxLine,
    this.height = 1,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: alignment,
      child: Text(
        text,
        style: TextStyle(
          color: color,
          height: height,
          fontSize: fontSize,
          fontWeight: fontweight
        ),
        maxLines: maxLine,
      ),
    );
  }
}