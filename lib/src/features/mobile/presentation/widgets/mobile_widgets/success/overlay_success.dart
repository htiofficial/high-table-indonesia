import 'package:flutter/material.dart';
import 'package:hti_indonesia/src/config/colors/colors.dart';
import 'package:hti_indonesia/src/config/font/font.dart';
import 'package:hti_indonesia/src/global/widgets/button/my_button.dart';
import 'package:hti_indonesia/src/global/widgets/text/my_text.dart';

class OverlaySuccess extends StatelessWidget {
  final List<String> messages;
  final dynamic onTap;

  const OverlaySuccess({
    required this.messages,
    required this.onTap,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          color: AppColors.baseBlack.withOpacity(0.5),
        ),
        Padding(
          padding: const EdgeInsets.all(16),
          child: Center(
            child: Container(
              decoration: BoxDecoration(
                color: AppColors.white,
                borderRadius: BorderRadius.circular(16),
              ),
              padding: const EdgeInsets.all(16),
              clipBehavior: Clip.hardEdge,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(
                    Icons.check_circle_outline,
                    size: 96,
                    color: AppColors.successColor,
                  ),
                  const SizedBox(height: 16),
                  MyText(
                    text: messages[0],
                    fontSize: AppFontSize.heading,
                  ),
                  const SizedBox(height: 8),
                  MyText(
                    text: messages[1],
                    fontSize: AppFontSize.description,
                    color: AppColors.neutralColor,
                  ),
                  const SizedBox(height: 16),
                  MyButton(
                    labelText: 'Understood',
                    onPressed: onTap,
                    fontSize: AppFontSize.description,
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
