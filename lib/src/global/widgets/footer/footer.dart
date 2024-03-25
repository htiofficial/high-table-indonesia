import 'package:flutter/material.dart';
import 'package:hti_indonesia/src/config/app/app.dart';
import 'package:hti_indonesia/src/config/colors/colors.dart';
import 'package:hti_indonesia/src/config/font/font.dart';
import 'package:hti_indonesia/src/global/widgets/text/my_text.dart';

class MyFooter extends StatelessWidget {
  final double height;
  final String type;

  const MyFooter({required this.height, required this.type, super.key});

  @override
  Widget build(BuildContext context) {
    if (type == "web") {
      return Container(
        height: height,
        color: AppColors.primary600,
        child: const Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 24,
            vertical: 16,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // perusahaan
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  MyText(
                    text: appName,
                    fontSize: AppFontSize.body,
                    color: AppColors.white,
                  ),
                  MyText(
                    text: appEmail,
                    fontSize: AppFontSize.body,
                    color: AppColors.white,
                  ),
                ],
              ),
              Divider(color: AppColors.white),
              // copyright
              MyText(
                text: "© 2024 PT $appName. All rights reserved.",
                fontSize: AppFontSize.body,
                color: AppColors.white,
              ),
            ],
          ),
        ),
      );
    } else {
      return Container(
        height: height,
        color: AppColors.primary600,
        child: const Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 24,
            vertical: 16,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // perusahaan
              MyText(
                text: appName,
                fontSize: AppFontSize.body,
                color: AppColors.white,
              ),
              SizedBox(height: 8),
              MyText(
                text: appEmail,
                fontSize: AppFontSize.body,
                color: AppColors.white,
              ),
              Divider(color: AppColors.white),
              // copyright
              MyText(
                text: "© 2024 PT $appName. All rights reserved.",
                fontSize: AppFontSize.body,
                color: AppColors.white,
              ),
            ],
          ),
        ),
      );
    }
  }
}
