import 'package:flutter/material.dart';
import 'package:hti_indonesia/src/config/colors/colors.dart';
import 'package:hti_indonesia/src/config/font/font.dart';
import 'package:hti_indonesia/src/global/widgets/text/my_text.dart';

class DashboardReportItem extends StatelessWidget {
  final String title;
  final int value;
  final IconData icon;
  final double changes;
  final String compares;
  final dynamic onPressed;

  const DashboardReportItem({
    required this.title,
    required this.value,
    required this.icon,
    required this.changes,
    required this.compares,
    required this.onPressed,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Card(
        clipBehavior: Clip.hardEdge,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
        children: [
            Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: AppColors.neutral100,
                          borderRadius: BorderRadius.circular(8),
                        ),
                        padding: const EdgeInsets.all(8),
                        child: Icon(
                          icon,
                          color: AppColors.primaryColor,
                          size: 16,
                        ),
                      ),
                      const SizedBox(width: 12),
                      MyText(
                        text: title,
                        fontSize: AppFontSize.description,
                        textAlign: TextAlign.start,
                      ),
                      const Spacer(),
                      GestureDetector(
                        onTap: onPressed,
                        child: const Icon(Icons.more_horiz),
                      ),
                      const SizedBox(width: 4),
                    ],
                  ),
                  const SizedBox(height: 16),
                  MyText(
                    text: value.toString(),
                    fontSize: AppFontSize.title,
                    fontWeight: AppFontWeight.bold,
                  ),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 16,
                vertical: 4,
              ),
              color: AppColors.neutral100,
              child: Row(
                children: [
                  changes >= 0
                      ? const Icon(
                          Icons.trending_up,
                          color: AppColors.successColor,
                          size: 20,
                        )
                      : const Icon(
                          Icons.trending_down,
                          color: AppColors.error200,
                          size: 20,
                        ),
                  const SizedBox(width: 4),
                  MyText(
                    text: "${(changes * 100).toInt()}%",
                    fontSize: AppFontSize.caption,
                  ),
                  const Spacer(),
                  MyText(
                    text: 'Compare to $compares',
                    fontSize: AppFontSize.caption,
                    color: AppColors.neutralColor,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
