import 'package:flutter/material.dart';
import 'package:hti_indonesia/src/config/font/font.dart';
import 'package:hti_indonesia/src/features/mobile/presentation/widgets/mobile_widgets/home/my_home.dart';
import 'package:hti_indonesia/src/features/mobile/presentation/widgets/mobile_widgets/my_navbar.dart';
import 'package:hti_indonesia/src/global/widgets/text/my_text.dart';

class MobileMain extends StatefulWidget {
  const MobileMain({
    required this.attendanceFunction,
    super.key,
  });

  final List attendanceFunction;

  @override
  State<MobileMain> createState() => _MobileMainState();
}

class _MobileMainState extends State<MobileMain> {
  int selectedIndex = 0;

  void _onTap(int i) {
    setState(() {
      selectedIndex = i;
    });
  }

  @override
  Widget build(BuildContext context) {
    final listPage = [
      MyHome(
        attendanceFunction: widget.attendanceFunction,
      ),
      const Center(
        child: MyText(
          text: "Under Development",
          fontSize: AppFontSize.caption,
        ),
      ),
      const Center(
        child: MyText(
          text: "Under Development",
          fontSize: AppFontSize.caption,
        ),
      ),
      const Center(
        child: MyText(
          text: "Under Development",
          fontSize: AppFontSize.caption,
        ),
      ),
    ];
    return Column(
      children: [
        Expanded(
          child: listPage.elementAt(selectedIndex),
        ),
        MyNavBar(
          selectedIndex: selectedIndex,
          onItemTapped: _onTap,
        ),
      ],
    );
  }
}
