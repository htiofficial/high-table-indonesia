import 'package:flutter/material.dart';
import 'package:hti_indonesia/src/config/colors/colors.dart';
import 'package:hti_indonesia/src/config/font/font.dart';
import 'package:hti_indonesia/src/features/mobile/presentation/widgets/mobile_widgets/home/my_notification.dart';
import 'package:hti_indonesia/src/global/widgets/text/my_text.dart';

class MyProfile extends StatelessWidget {
  final dynamic onPressed;

  const MyProfile({required this.onPressed, super.key});

  @override
  Widget build(BuildContext context) {
    String getGreeting() {
      int currentHour = DateTime.now().hour;
      return (currentHour >= 5 && currentHour < 11)
          ? 'Good Morning'
          : (currentHour >= 11 && currentHour < 15)
              ? 'Good Afternoon'
              : (currentHour >= 15 && currentHour < 18)
                  ? 'Good Afternoon'
                  : 'Good Night';
    }

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          MyText(
            text: getGreeting(),
            fontSize: AppFontSize.body,
            fontWeight: AppFontWeight.bold,
          ),
          const SizedBox(height: 10),
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              ClipOval(
                child: Container(
                  height: 42,
                  width: 42,
                  color: AppColors.blockColor,
                  child: ClipOval(
                    child: Image.asset(
                      'assets/images/profile_pic.png',
                      width: 36,
                      height: 36,
                      alignment: Alignment.topCenter,
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 12),
              const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  MyText(
                    text: 'Travis Scott',
                    fontSize: AppFontSize.body,
                    fontWeight: AppFontWeight.bold,
                  ),
                  SizedBox(height: 4),
                  MyText(
                    text: 'Senior Manager',
                    fontSize: AppFontSize.body,
                  ),
                ],
              ),
              const Spacer(),
              GestureDetector(
                onTap: onPressed,
                child: const MyNotification(),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
