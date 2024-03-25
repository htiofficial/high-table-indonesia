import 'package:flutter/material.dart';
import 'package:hti_indonesia/src/config/colors/colors.dart';
import 'package:hti_indonesia/src/config/font/font.dart';
import 'package:hti_indonesia/src/global/widgets/box/rounded_block.dart';
import 'package:hti_indonesia/src/global/widgets/text/my_text.dart';

class MyRollingBanner extends StatelessWidget {
  final List<String> listText;
  final String type;

  const MyRollingBanner({
    required this.listText,
    required this.type,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    if (type == 'web') {
      return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 48),
        child: RoundedBlock(
          color: AppColors.primaryColor,
          padding: const EdgeInsets.symmetric(vertical: 16),
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Wrap(
              spacing: 16,
              children: [
                for (var text in listText)
                  Row(
                    children: [
                      MyText(
                        text: text,
                        fontSize: AppFontSize.title,
                        color: AppColors.white,
                      ),
                      const SizedBox(width: 16),
                      const MyText(
                        text: "+",
                        fontSize: AppFontSize.title,
                        color: AppColors.primary600,
                      ),
                    ],
                  ),
              ],
            ),
          ),
        ),
      );
    } else {
      return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        child: RoundedBlock(
          color: AppColors.primaryColor,
          padding: const EdgeInsets.symmetric(vertical: 8),
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Wrap(
              spacing: 8,
              children: [
                for (var text in listText)
                  Row(
                    children: [
                      MyText(
                        text: text,
                        fontSize: 24,
                        color: AppColors.white,
                      ),
                      const SizedBox(width: 8),
                      const MyText(
                        text: "+",
                        fontSize: 24,
                        color: AppColors.primary600,
                      ),
                    ],
                  ),
              ],
            ),
          ),
        ),
      );
    }
  }
}
