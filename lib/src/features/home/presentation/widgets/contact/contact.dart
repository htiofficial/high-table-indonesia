import 'package:flutter/material.dart';
import 'package:hti_indonesia/src/config/colors/colors.dart';
import 'package:hti_indonesia/src/config/font/font.dart';
import 'package:hti_indonesia/src/global/widgets/box/rounded_block.dart';
import 'package:hti_indonesia/src/global/widgets/decoration/my_circle.dart';
import 'package:hti_indonesia/src/global/widgets/text/my_text.dart';

class MyContact extends StatelessWidget {
  final String type;
  const MyContact({required this.type, super.key});

  @override
  Widget build(BuildContext context) {
    if (type == 'web') {
      return const Padding(
        padding: EdgeInsets.only(bottom: 112),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                MyText(
                  text: "Contact",
                  fontSize: 48,
                ),
                MyBlueCircle(radius: 12),
              ],
            ),
            SizedBox(height: 24),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 48),
              child: Row(
                children: [
                  Expanded(
                    child: RoundedBlock(
                      padding: EdgeInsets.fromLTRB(
                        16,
                        24,
                        16,
                        22,
                      ),
                      color: AppColors.blockColor,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          MyText(
                            text: "Call (ID)",
                            fontSize: AppFontSize.heading,
                            fontWeight: AppFontWeight.bold,
                            color: AppColors.primaryColor,
                          ),
                          SizedBox(height: 12),
                          MyText(
                            text: "+62 877 3030 1050",
                            fontSize: AppFontSize.title,
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(width: 16),
                  Expanded(
                    child: RoundedBlock(
                      padding: EdgeInsets.fromLTRB(
                        16,
                        24,
                        16,
                        22,
                      ),
                      color: AppColors.blockColor,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          MyText(
                            text: "Email",
                            fontSize: AppFontSize.heading,
                            fontWeight: AppFontWeight.bold,
                            color: AppColors.primaryColor,
                          ),
                          SizedBox(height: 12),
                          MyText(
                            text: "hightableindonesia.official@gmail.com",
                            fontSize: AppFontSize.title,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      );
    } else {
      return const Padding(
        padding: EdgeInsets.only(bottom: 112),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                MyText(
                  text: "Contact",
                  fontSize: 48,
                ),
                MyBlueCircle(radius: 12),
              ],
            ),
            SizedBox(height: 24),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 24),
              child: Column(
                children: [
                  RoundedBlock(
                    padding: EdgeInsets.all(16),
                    color: AppColors.blockColor,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        MyText(
                          text: "Call (ID)",
                          fontSize: AppFontSize.heading,
                          fontWeight: AppFontWeight.bold,
                          color: AppColors.primaryColor,
                        ),
                        SizedBox(height: 8),
                        MyText(
                          text: "+62 877 3030 1050",
                          fontSize: AppFontSize.title,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 24),
                  RoundedBlock(
                    padding: EdgeInsets.all(16),
                    color: AppColors.blockColor,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        MyText(
                          text: "Email",
                          fontSize: AppFontSize.heading,
                          fontWeight: AppFontWeight.bold,
                          color: AppColors.primaryColor,
                        ),
                        SizedBox(height: 8),
                        MyText(
                          text: "hightableindonesia.official@gmail.com",
                          fontSize: AppFontSize.title,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      );
    }
  }
}
