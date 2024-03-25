import 'package:flutter/material.dart';
import 'package:hti_indonesia/src/config/colors/colors.dart';
import 'package:hti_indonesia/src/config/font/font.dart';
import 'package:hti_indonesia/src/global/widgets/box/rounded_block.dart';
import 'package:hti_indonesia/src/global/widgets/decoration/my_circle.dart';
import 'package:hti_indonesia/src/global/widgets/text/my_text.dart';

class MyAbout extends StatelessWidget {
  final String type;
  const MyAbout({required this.type, super.key});

  @override
  Widget build(BuildContext context) {
    if (type == "web") {
      return const Padding(
        padding: EdgeInsets.symmetric(horizontal: 48),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                MyText(
                  text: "About",
                  fontSize: 48,
                ),
                MyBlueCircle(radius: 12),
              ],
            ),
            SizedBox(height: 24),
            RoundedBlock(
              color: AppColors.blockColor,
              padding: EdgeInsets.symmetric(
                horizontal: 48,
                vertical: 24,
              ),
              child: MyText(
                text:
                    'Established in 2024 by Riva Alifyandono, High Table Indonesia epitomizes a commitment to excellence in human resources management. With an unwavering dedication to quality service, our company strives to elevate the HR experiences of client organizations. Our mission is to empower businesses with robust HR solutions, fostering efficiency, growth, and prosperity. At High Table Indonesia, we believe in the transformative power of effective HR management, driving success and innovation in every endeavor.',
                fontSize: AppFontSize.heading,
                height: 1.2,
              ),
            )
          ],
        ),
      );
    } else {
      return const Padding(
        padding: EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                MyText(
                  text: "About",
                  fontSize: 48,
                ),
                MyBlueCircle(radius: 12),
              ],
            ),
            SizedBox(height: 24),
            RoundedBlock(
              color: AppColors.blockColor,
              padding: EdgeInsets.all(24),
              child: MyText(
                text:
                    'Established in 2024 by Riva Alifyandono, High Table Indonesia epitomizes a commitment to excellence in human resources management. With an unwavering dedication to quality service, our company strives to elevate the HR experiences of client organizations. Our mission is to empower businesses with robust HR solutions, fostering efficiency, growth, and prosperity. At High Table Indonesia, we believe in the transformative power of effective HR management, driving success and innovation in every endeavor.',
                fontSize: AppFontSize.heading,
                textAlign: TextAlign.center,
              ),
            )
          ],
        ),
      );
    }
  }
}
