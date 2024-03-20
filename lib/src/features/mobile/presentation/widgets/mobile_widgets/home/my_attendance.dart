import 'package:flutter/material.dart';
import 'package:hti_indonesia/src/config/colors/colors.dart';
import 'package:hti_indonesia/src/config/font/font.dart';
import 'package:hti_indonesia/src/global/widgets/text/my_text.dart';

class MyAttendance extends StatelessWidget {
  const MyAttendance({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: AppColors.neutral100,
        borderRadius: BorderRadius.all(
          Radius.circular(16),
        ),
      ),
      width: double.maxFinite,
      child: const Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 8,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 8),
            MyText(
              text: "Today Attendance",
              fontSize: AppFontSize.description,
              fontWeight: AppFontWeight.medium,
            ),
            SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                MyRoundedInfo(
                  icon: Icons.input_rounded,
                  title: "Check In",
                  value: "09.00 AM",
                  description: "On Time",
                ),
                SizedBox(width: 8),
                MyRoundedInfo(
                  icon: Icons.output_outlined,
                  title: "Check Out",
                  value: "05.00 PM",
                  description: "On Time",
                ),
              ],
            ),
            SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                MyRoundedInfo(
                  icon: Icons.task_outlined,
                  title: "Tasks Today",
                  value: "5 Items",
                  description: "50% Completed",
                ),
                SizedBox(width: 8),
                MyRoundedInfo(
                  icon: Icons.calendar_month_outlined,
                  title: "Total Days",
                  value: "15 Days",
                  description: "Working Days",
                ),
              ],
            ),
            SizedBox(height: 8),
          ],
        ),
      ),
    );
  }
}

class MyRoundedInfo extends StatelessWidget {
  const MyRoundedInfo({
    required this.icon,
    required this.title,
    required this.value,
    required this.description,
    super.key,
  });

  final IconData icon;
  final String title;
  final String value;
  final String description;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
          color: AppColors.white,
          borderRadius: BorderRadius.circular(
            12,
          ),
        ),
        padding: const EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Container(
                  padding: const EdgeInsets.all(4),
                  decoration: BoxDecoration(
                    color: AppColors.primary50.withOpacity(0.5),
                    borderRadius: BorderRadius.circular(
                      4,
                    ),
                  ),
                  child: Icon(
                    icon,
                    size: 16,
                    color: AppColors.primaryColor,
                  ),
                ),
                SizedBox(width: 8),
                MyText(
                  text: title,
                  fontSize: AppFontSize.caption,
                ),
              ],
            ),
            const SizedBox(height: 12),
            MyText(
              text: value,
              fontSize: AppFontSize.body,
              fontWeight: AppFontWeight.medium,
            ),
            const SizedBox(height: 8),
            MyText(
              text: description,
              fontSize: AppFontSize.caption,
              color: AppColors.neutralColor,
            ),
          ],
        ),
      ),
    );
  }
}
