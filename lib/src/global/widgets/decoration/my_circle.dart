import 'package:flutter/material.dart';
import 'package:hti_indonesia/src/config/colors/colors.dart';

class MyBlueCircle extends StatelessWidget {
  const MyBlueCircle({
    this.radius = 4,
    this.color,
    super.key,
  });

  final double? radius;
  final Color? color;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const SizedBox(width: 8),
        Container(
          width: radius,
          height: radius,
          decoration: BoxDecoration(
            color: color ?? AppColors.primaryColor,
            shape: BoxShape.circle,
          ),
        ),
        const SizedBox(width: 8),
      ],
    );
  }
}
