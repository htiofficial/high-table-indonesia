import 'package:flutter/material.dart';
import 'package:hti_indonesia/src/config/colors/colors.dart';
import 'package:hti_indonesia/src/config/font/font.dart';
import 'package:hti_indonesia/src/global/widgets/text/my_text.dart';

class MyNavigationBar extends StatefulWidget {
  const MyNavigationBar({super.key});

  @override
  State<MyNavigationBar> createState() => _MyNavigationBarState();
}

class _MyNavigationBarState extends State<MyNavigationBar> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        mainAxisSize: MainAxisSize.max,
        children: [
          const Row(
            children: [
              MyText(
                text: " HTI",
                fontSize: AppFontSize.body,
                fontWeight: AppFontWeight.medium,
              ),
              MyText(
                text: " 2024",
                fontSize: AppFontSize.body,
                fontWeight: AppFontWeight.medium,
                color: AppColors.primary600,
              ),
            ],
          ),
          const Spacer(),
          TextButton(
            onPressed: () {},
            child: const MyText(
              text: 'Home',
              fontSize: AppFontSize.body,
            ),
          ),
          const MyText(
            text: '\\    ',
            fontSize: AppFontSize.body,
            color: AppColors.neutral400,
          ),
          TextButton(
            onPressed: () {},
            child: const MyText(
              text: 'Expertise',
              fontSize: AppFontSize.body,
            ),
          ),
          const MyText(
            text: '\\    ',
            fontSize: AppFontSize.body,
            color: AppColors.neutral400,
          ),
          TextButton(
            onPressed: () {},
            child: const MyText(
              text: 'Contact',
              fontSize: AppFontSize.body,
            ),
          ),
          const MyText(
            text: '\\    ',
            fontSize: AppFontSize.body,
            color: AppColors.neutral400,
          ),
          TextButton(
            onPressed: () {},
            child: const MyText(
              text: 'About',
              fontSize: AppFontSize.body,
            ),
          ),
        ],
      ),
    );
  }
}
