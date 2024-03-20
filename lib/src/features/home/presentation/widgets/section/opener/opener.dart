import 'package:flutter/material.dart';
import 'package:hti_indonesia/src/config/colors/colors.dart';
import 'package:hti_indonesia/src/config/font/font.dart';
import 'package:hti_indonesia/src/features/home/presentation/widgets/rolling_banner.dart';
import 'package:hti_indonesia/src/global/widgets/box/rounded_block.dart';
import 'package:hti_indonesia/src/global/widgets/button/my_button.dart';
import 'package:hti_indonesia/src/global/widgets/text/my_text.dart';

class MyOpener extends StatelessWidget {
  const MyOpener({super.key});

  @override
  Widget build(BuildContext context) {
    const technologies = [
      "   Technology",
      "Flutter",
      "TensorFlow",
      "Flask",
      "Quarkus",
      "Firebase",
      "MongoDB",
      "PostgreSQL",
      "Technology",
      "Flutter",
      "TensorFlow",
      "Flask",
      "Quarkus",
      "Firebase",
      "MongoDB",
      "PostgreSQL",
      "Technology",
      "Flutter",
      "TensorFlow",
      "Flask",
      "Quarkus",
      "Firebase",
      "MongoDB",
      "PostgreSQL",
    ];
    return Padding(
      padding: const EdgeInsets.only(
        top: 24,
        bottom: 112,
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 48),
            child: RoundedBlock(
              color: AppColors.blockColor,
              padding: const EdgeInsets.fromLTRB(
                16,
                16,
                16,
                0,
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      const MyText(
                        text: "HTI",
                        fontSize: AppFontSize.heading,
                        fontWeight: AppFontWeight.semiBold,
                      ),
                      const MyText(
                        text: " 2024",
                        fontSize: AppFontSize.heading,
                        fontWeight: AppFontWeight.semiBold,
                        color: AppColors.primaryColor,
                      ),
                      const Spacer(),
                      MyButton(
                        labelText: 'Contact Us',
                        onPressed: () {},
                        padding: const EdgeInsets.fromLTRB(16, 16, 16, 14),
                      ),
                    ],
                  ),
                  const SizedBox(height: 100),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const MyText(
                              text: "High Table\nIndonesia",
                              fontSize: 120,
                              fontWeight: AppFontWeight.semiBold,
                              textAlign: TextAlign.start,
                              // height: 0.9,
                            ),
                            const SizedBox(height: 32),
                            Row(
                              children: [
                                const SizedBox(width: 48),
                                RichText(
                                  text: const TextSpan(
                                    style: TextStyle(
                                        fontFamily: 'Helvetica',
                                        fontSize: AppFontSize.heading,
                                        fontWeight: AppFontWeight.normal,
                                        color: AppColors.baseBlack),
                                    children: [
                                      TextSpan(
                                          text:
                                              'We develop revolutionary HR software\nwith delivering '),
                                      TextSpan(
                                        text: 'quality',
                                        style: TextStyle(
                                          fontWeight: AppFontWeight.semiBold,
                                          color: AppColors.primaryColor,
                                        ),
                                      ),
                                      TextSpan(text: ' and '),
                                      TextSpan(
                                        text: 'speed',
                                        style: TextStyle(
                                          fontWeight: AppFontWeight.semiBold,
                                          color: AppColors.primaryColor,
                                        ),
                                      ),
                                      TextSpan(
                                          text: '\nthrough latest technology'),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 48),
                          ],
                        ),
                        const SizedBox(width: 120),
                        Image.asset(
                          'assets/images/dasboard.png',
                          height: 440,
                          // width: 720,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 24),
          const MyRollingBanner(listText: technologies),
        ],
      ),
    );
  }
}