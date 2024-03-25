import 'package:flutter/material.dart';
import 'package:hti_indonesia/src/features/home/presentation/widgets/rolling_banner.dart';
import 'package:hti_indonesia/src/features/home/presentation/widgets/expertise/expertise_item.dart';
import 'package:hti_indonesia/src/global/widgets/decoration/my_circle.dart';
import 'package:hti_indonesia/src/global/widgets/text/my_text.dart';
import 'package:hti_indonesia/src/routes/routes.dart';

class MyExpertise extends StatelessWidget {
  final String type;

  const MyExpertise({required this.type, super.key});

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
    if (type == 'web') {
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
                    path: 'assets/images/demo_web.png',
                    padding: const EdgeInsets.symmetric(
                      vertical: 24,
                      horizontal: 24,
                    ),
                    isAvailable: true,
                    onTap: () {
                      navKey.currentState!.pushNamed(routeWebsite);
                    },
                    type: type,
                  ),
                  const SizedBox(width: 16),
                  MyExpertiseItem(
                    title: 'Mobile Application',
                    path: 'assets/images/demo_mobile.png',
                    isAvailable: true,
                    onTap: () {
                      navKey.currentState!.pushNamed(routeMobile);
                    },
                    type: type,
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
                    type: type,
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
                    type: type,
                    onTap: () {},
                  ),
                ],
              ),
            ),
            const SizedBox(height: 24),
            MyRollingBanner(
              listText: listStartNow,
              type: type,
            ),
          ],
        ),
      );
    } else {
      return Padding(
        padding: const EdgeInsets.only(
          left: 24,
          right: 24,
          bottom: 112,
        ),
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

            MyExpertiseItem(
              title: 'Website Application',
              path: 'assets/images/demo_web.png',
              padding: const EdgeInsets.symmetric(
                vertical: 24,
                horizontal: 24,
              ),
              isAvailable: true,
              onTap: () {
                navKey.currentState!.pushNamed(routeWebsite);
              },
              type: type,
            ),

            const SizedBox(height: 24),

            MyExpertiseItem(
              title: 'Mobile Application',
              path: 'assets/images/demo_mobile.png',
              isAvailable: true,
              onTap: () {
                navKey.currentState!.pushNamed(routeMobile);
              },
              type: type,
            ),

            const SizedBox(height: 24),

            MyExpertiseItem(
              title: 'Chatbot Messanger',
              path: 'assets/images/chatbot.png',
              isAvailable: false,
              onTap: () {},
              type: type,
            ),

            const SizedBox(height: 24),

            MyExpertiseItem(
              title: 'Machine Learning',
              path: 'assets/images/machine_learning.png',
              isAvailable: false,
              padding: const EdgeInsets.symmetric(
                vertical: 24,
                horizontal: 24,
              ),
              type: type,
              onTap: () {},
            ),
            const SizedBox(height: 24),
            MyRollingBanner(
              listText: listStartNow,
              type: type,
            ),
          ],
        ),
      );
    }
  }
}
