import 'package:flutter/material.dart';
import 'package:hti_indonesia/src/config/font/font.dart';
import 'package:hti_indonesia/src/global/widgets/text/my_text.dart';

class MyNavigationBarWebsite extends StatelessWidget {
  const MyNavigationBarWebsite(
      {required this.onChangedIndex, required this.currentIndex, super.key});

  final dynamic onChangedIndex;
  final int currentIndex;
  @override
  Widget build(BuildContext context) {
    return NavigationRail(
      onDestinationSelected: onChangedIndex,
      selectedIndex: currentIndex,
      elevation: 5,
      destinations: const <NavigationRailDestination>[
        NavigationRailDestination(
          icon: Icon(Icons.apps_outlined),
          label: MyText(
            text: 'Home',
            fontSize: AppFontSize.description,
          ),
        ),
        NavigationRailDestination(
          icon: Icon(Icons.storage),
          label: MyText(
            text: 'Master Data',
            fontSize: AppFontSize.description,
          ),
        ),
      ],
    );
  }
}
