import 'package:flutter/material.dart';
import 'package:hti_indonesia/src/config/colors/colors.dart';
import 'package:hti_indonesia/src/config/font/font.dart';

class MyNavBar extends StatelessWidget {
  const MyNavBar({
    required this.selectedIndex,
    required this.onItemTapped,
    super.key,
  });

  final int selectedIndex;
  final Function(int) onItemTapped;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: AppColors.baseBlack.withOpacity(0.05),
            blurRadius: 2,
            offset: const Offset(0, -2),
          )
        ],
      ),
      child: Theme(
        data: ThemeData(
          splashColor: Colors.transparent,
          highlightColor: Colors.transparent,
        ),
        child: Column(
          children: [
            BottomNavigationBar(
              items: const <BottomNavigationBarItem>[
                BottomNavigationBarItem(
                  icon: Icon(Icons.apps_rounded),
                  label: 'Home',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.document_scanner_outlined),
                  label: 'Self-Service',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.task_outlined),
                  label: 'Task',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.account_circle_outlined),
                  label: 'Account',
                ),
              ],
              type: BottomNavigationBarType.fixed,
              currentIndex: selectedIndex,
              showUnselectedLabels: true,
              selectedItemColor: AppColors.primaryColor,
              unselectedItemColor: AppColors.neutralColor,
              selectedFontSize: AppFontSize.caption,
              unselectedFontSize: AppFontSize.caption,
              elevation: 0,
              onTap: onItemTapped,
              backgroundColor: Colors.white,
            ),
          ],
        ),
      ),
    );
  }
}
