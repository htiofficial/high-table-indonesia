import 'package:flutter/material.dart';
import 'package:hti_indonesia/src/config/colors/colors.dart';
import 'package:hti_indonesia/src/config/font/font.dart';
import 'package:hti_indonesia/src/global/widgets/button/my_button.dart';
import 'package:hti_indonesia/src/global/widgets/text/my_text.dart';

class MyAttendance extends StatelessWidget {
  const MyAttendance({
    required this.attendanceFunction,
    super.key,
  });

  final List attendanceFunction;

  @override
  Widget build(BuildContext context) {
    Widget attendance = Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        MyAttnInfo(
          type: 'in',
          icon: Icons.input_rounded,
          title: "Check In",
          value: "09.00 AM",
          description: "On Time",
          functions: attendanceFunction,
        ),
        const SizedBox(width: 8),
        MyAttnInfo(
          type: 'out',
          icon: Icons.output_outlined,
          title: "Check Out",
          value: "05.00 PM",
          description: "On Time",
          functions: attendanceFunction,
        ),
      ],
    );

    return Container(
      decoration: const BoxDecoration(
        color: AppColors.neutral100,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(16),
          topRight: Radius.circular(16),
        ),
      ),
      width: double.maxFinite,
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 8,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 8),
            const MyText(
              text: "Today Attendance",
              fontSize: AppFontSize.body,
              fontWeight: AppFontWeight.bold,
            ),
            const SizedBox(height: 16),
            attendance,
            const SizedBox(height: 8),
            const Row(
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
            const SizedBox(height: 8),
          ],
        ),
      ),
    );
  }
}

class MyAttnInfo extends StatelessWidget {
  const MyAttnInfo({
    required this.icon,
    required this.title,
    required this.value,
    required this.description,
    required this.type,
    required this.functions,
    super.key,
  });

  final IconData icon;
  final String title;
  final String value;
  final String description;
  final String type;
  final List functions;

  @override
  Widget build(BuildContext context) {
    dynamic function;
    Widget widget = MyButton(
      labelText: 'Attendance',
      onPressed: functions[0]['function'],
      fontSize: AppFontSize.caption,
    );

    //! IN
    if (type == 'in') {
      function = functions[0]['function'];
      final statusIn = functions[0]['status'];
      if (!statusIn) {
        widget = MyButton(
          labelText: 'Attendance',
          onPressed: function,
          fontSize: AppFontSize.caption,
        );
      } else {
        widget = Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            MyText(
              text: value,
              fontSize: AppFontSize.body,
              fontWeight: AppFontWeight.bold,
            ),
            const SizedBox(height: 8),
            MyText(
              text: description,
              fontSize: AppFontSize.caption,
              color: AppColors.neutralColor,
            ),
          ],
        );
      }
    }
    // ! OUT
    else {
      function = functions[2]['function'];
      final statusIn = functions[0]['status'];
      final statusOut = functions[2]['status'];
      if (!statusIn) {
        widget = MyButton(
          labelText: 'Attendance',
          onPressed: () {},
          fontSize: AppFontSize.caption,
          color: AppColors.neutral400,
        );
      } else {
        if (statusIn && !statusOut) {
          widget = MyButton(
            labelText: 'Attendance',
            onPressed: function,
            fontSize: AppFontSize.caption,
          );
        } else if (statusIn && statusOut) {
          widget = Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              MyText(
                text: value,
                fontSize: AppFontSize.body,
                fontWeight: AppFontWeight.bold,
              ),
              const SizedBox(height: 8),
              MyText(
                text: description,
                fontSize: AppFontSize.caption,
                color: AppColors.neutralColor,
              ),
            ],
          );
        }
      }
    }

    return Expanded(
      child: Container(
        height: 100,
        decoration: BoxDecoration(
          color: AppColors.white,
          borderRadius: BorderRadius.circular(12),
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
                    color: AppColors.neutral100,
                    borderRadius: BorderRadius.circular(4),
                  ),
                  child: Icon(
                    icon,
                    size: 16,
                    color: AppColors.primaryColor,
                  ),
                ),
                const SizedBox(width: 8),
                MyText(
                  text: title,
                  fontSize: AppFontSize.caption,
                ),
              ],
            ),
            const Spacer(),
            widget,
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
    this.functions,
    super.key,
  });

  final IconData icon;
  final String title;
  final String value;
  final String description;
  final List? functions;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: functions?[0]['function'],
        child: Container(
          height: 100,
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
                      color: AppColors
                          .neutral100, // AppColors.primary50.withOpacity(0.5),
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
                  const SizedBox(width: 8),
                  MyText(
                    text: title,
                    fontSize: AppFontSize.caption,
                  ),
                ],
              ),
              const SizedBox(height: 8),
              MyText(
                text: value,
                fontSize: AppFontSize.body,
                fontWeight: AppFontWeight.bold,
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
      ),
    );
  }
}
