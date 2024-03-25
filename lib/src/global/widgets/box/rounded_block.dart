import 'package:flutter/material.dart';

class RoundedBlock extends StatelessWidget {
  const RoundedBlock({
    required this.child,
    this.width = double.maxFinite,
    this.padding,
    this.color,
    super.key,
  });

  final Widget child;
  final double? width;
  final EdgeInsetsGeometry? padding;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.hardEdge,
      padding: padding,
      width: width,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(24),
      ),
      child: child,
    );
  }
}
