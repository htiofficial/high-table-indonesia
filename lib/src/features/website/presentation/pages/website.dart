import 'package:flutter/material.dart';
import 'package:hti_indonesia/src/features/website/presentation/widgets/dashboard/dashboard.dart';
import 'package:hti_indonesia/src/features/website/presentation/widgets/master/master.dart';
import 'package:hti_indonesia/src/features/website/presentation/widgets/navbar/navigation_bar.dart';

class WebsitePage extends StatefulWidget {
  const WebsitePage({super.key});

  @override
  State<WebsitePage> createState() => _WebsitePageState();
}

class _WebsitePageState extends State<WebsitePage> {
  int _currentIndex = 0;

  void _onChangedIndex(int i) {
    setState(() {
      _currentIndex = i;
    });
  }

  final listPage = [
    const MyDashboardWebsite(),
    const MyMasterWebsite(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          MyNavigationBarWebsite(
            onChangedIndex: _onChangedIndex,
            currentIndex: _currentIndex,
          ),
          Expanded(
            flex: 12,
            child: Center(
              child: listPage.elementAt(_currentIndex),
            ),
          ),
        ],
      ),
    );
  }
}
