import 'package:flutter/material.dart';
import 'package:hti_indonesia/src/config/colors/colors.dart';
import 'package:hti_indonesia/src/config/font/font.dart';
import 'package:hti_indonesia/src/global/widgets/text/my_text.dart';

class MyBackHeader extends StatelessWidget {
  final String title;
  final dynamic onPressed;

  const MyBackHeader({
    required this.title,
    required this.onPressed,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: TextButton(
          onPressed: onPressed,
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Icon(
                Icons.arrow_back_ios,
                color: AppColors.baseBlack,
              ),
              const SizedBox(width: 4),
              MyText(
                text: title,
                fontSize: AppFontSize.body,
                fontWeight: AppFontWeight.bold,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
