import 'package:flutter/material.dart';
import 'package:hti_indonesia/src/config/colors/colors.dart';
import 'package:hti_indonesia/src/config/font/font.dart';

class MyText extends StatelessWidget {
  const MyText({
    required this.text,
    required this.fontSize,
    this.fontWeight = AppFontWeight.normal,
    this.fontStyle,
    this.color = AppColors.baseBlack,
    this.textDecoration,
    this.textAlign = TextAlign.center,
    this.overflow,
    this.height,
    super.key,
  });
  final String text;
  final double fontSize;
  final FontWeight? fontWeight;
  final FontStyle? fontStyle;
  final Color? color;
  final TextDecoration? textDecoration;
  final TextAlign? textAlign;
  final TextOverflow? overflow;
  final double? height;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: fontSize,
        fontWeight: fontWeight,
        color: color,
        fontStyle: fontStyle,
        decoration: textDecoration,
        decorationColor: color,
        height: height
        
      ),
      textAlign: textAlign,
      overflow: overflow,
    );
  }
}
