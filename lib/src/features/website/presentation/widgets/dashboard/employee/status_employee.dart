import 'package:flutter/material.dart';
import 'package:hti_indonesia/src/config/colors/colors.dart';
import 'package:hti_indonesia/src/config/font/font.dart';
import 'package:hti_indonesia/src/global/widgets/text/my_text.dart';

class MyEmployeeStatus extends StatelessWidget {
  final String status;
  const MyEmployeeStatus({required this.status, super.key});

  @override
  Widget build(BuildContext context) {
    Color color = AppColors.neutral100;
    if (status == 'Active') {
      color = AppColors.successColor;
    } else if (status == 'On Leave') {
      color = AppColors.primaryColor;
    }
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 8,
        vertical: 4,
      ),
      decoration: BoxDecoration(
        color: color.withOpacity(0.75),
        borderRadius: BorderRadius.circular(8),
      ),
      child: MyText(
        text: status,
        fontSize: AppFontSize.caption,
        color: AppColors.white,
      ),
    );
  }
}
