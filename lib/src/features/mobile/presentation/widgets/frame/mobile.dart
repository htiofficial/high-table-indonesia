import 'package:flutter/material.dart';
import 'package:hti_indonesia/src/config/colors/colors.dart';
import 'package:hti_indonesia/src/config/font/font.dart';
import 'package:hti_indonesia/src/features/mobile/presentation/widgets/mobile_widgets/home/my_home.dart';
import 'package:hti_indonesia/src/features/mobile/presentation/widgets/mobile_widgets/my_footer.dart';
import 'package:hti_indonesia/src/features/mobile/presentation/widgets/mobile_widgets/my_header.dart';
import 'package:hti_indonesia/src/features/mobile/presentation/widgets/mobile_widgets/my_navbar.dart';
import 'package:hti_indonesia/src/features/mobile/presentation/widgets/mobile_widgets/notification/notification.dart';
import 'package:hti_indonesia/src/global/widgets/text/my_text.dart';

class MobileApp extends StatefulWidget {
  const MobileApp({super.key});

  @override
  State<MobileApp> createState() => _MobileAppState();
}

class _MobileAppState extends State<MobileApp> {
  int selectedIndex = 0;

  void _onTap(int i) {
    setState(() {
      selectedIndex = i;
    });
  }

  final listPage = [
    const MyHome(),
    const Center(
      child: MyText(
        text: "Under Development",
        fontSize: AppFontSize.caption,
      ),
    ),
    const Center(
      child: MyNotificationPage(),
    ),
    const Center(
      child: MyText(
        text: "Under Development",
        fontSize: AppFontSize.caption,
      ),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(64.0),
        border: Border.all(
          color: AppColors.baseBlack,
          width: 12,
        ),
      ),
      height: 720,
      width: 360,
      child: Container(
        decoration: BoxDecoration(
          color: AppColors.white,
          borderRadius: BorderRadius.circular(52),
        ),
        child: Column(
          children: [
            const MyHeaderMobile(),
            Expanded(child: listPage.elementAt(selectedIndex)),
            MyNavBar(
              selectedIndex: selectedIndex,
              onItemTapped: _onTap,
            ),
            const MyFooterMobile(),
          ],
        ),
      ),
    );
  }
}
