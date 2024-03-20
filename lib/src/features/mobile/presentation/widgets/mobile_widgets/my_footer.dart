import 'package:flutter/material.dart';
import 'package:hti_indonesia/src/config/colors/colors.dart';

class MyFooterMobile extends StatelessWidget {
  const MyFooterMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(
        top: 42,
        bottom: 8,
      ),
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(48),
          bottomRight: Radius.circular(48),
        ),
      ),
      child: SizedBox(
        height: 8,
        child: Container(
          alignment: Alignment.bottomCenter,
          decoration: BoxDecoration(
            color: AppColors.neutral300,
            borderRadius: BorderRadius.circular(8),
          ),
          width: 120,
          height: 8,
        ),
      ),
    );
  }
}
