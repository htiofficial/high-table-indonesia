import 'package:flutter/material.dart';
import 'package:hti_indonesia/src/features/home/presentation/widgets/rolling_banner.dart';
import 'package:hti_indonesia/src/features/home/presentation/widgets/section/expertise/expertise_item.dart';
import 'package:hti_indonesia/src/global/widgets/decoration/my_circle.dart';
import 'package:hti_indonesia/src/global/widgets/text/my_text.dart';
import 'package:hti_indonesia/src/routes/routes.dart';

class MyExpertise extends StatelessWidget {
  const MyExpertise({super.key});

  @override
  Widget build(BuildContext context) {
    const listStartNow = [
      "   Self Service",
      "Management",
      "Approval",
      "Tracker",
      "Chatbot",
      "Machine Learning",
      "Self Service",
      "Management",
      "Approval",
      "Tracker",
      "Chatbot",
      "Machine Learning",
      "Self Service",
      "Management",
      "Approval",
      "Tracker",
      "Chatbot",
      "Machine Learning",
      "Self Service",
      "Management",
      "Approval",
      "Tracker",
      "Chatbot",
      "Machine Learning",
    ];
    return Padding(
      padding: const EdgeInsets.only(bottom: 112),
      child: Column(
        children: [
          // expertise
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              MyText(
                text: "Expertise",
                fontSize: 48,
              ),
              MyBlueCircle(radius: 12),
            ],
          ),

          const SizedBox(height: 24),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 48),
            child: Row(
              children: [
                MyExpertiseItem(
                  title: 'Website Application',
                  path: 'assets/images/demo_mobile.png',
                  isAvailable: true,
                  onTap: () {
                    navKey.currentState!.pushNamed(routeWebsite);
                  },
                ),
                const SizedBox(width: 16),
                MyExpertiseItem(
                  title: 'Mobile Application',
                  path: 'assets/images/demo_mobile.png',
                  isAvailable: true,
                  onTap: () {
                    navKey.currentState!.pushNamed(routeMobile);
                  },
                ),
              ],
            ),
          ),

          const SizedBox(height: 16),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 48),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                MyExpertiseItem(
                  title: 'Chatbot Messanger',
                  path: 'assets/images/chatbot.png',
                  isAvailable: false,
                  onTap: () {},
                ),
                const SizedBox(width: 16),
                MyExpertiseItem(
                  title: 'Machine Learning',
                  path: 'assets/images/machine_learning.png',
                  isAvailable: false,
                  padding: const EdgeInsets.symmetric(
                    vertical: 24,
                    horizontal: 24,
                  ),
                  onTap: () {},
                ),
              ],
            ),
          ),
          const SizedBox(height: 24),
          const MyRollingBanner(listText: listStartNow),
        ],
      ),
    );
  }
}
