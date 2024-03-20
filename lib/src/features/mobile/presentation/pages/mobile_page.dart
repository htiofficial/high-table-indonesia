import 'package:flutter/material.dart';
import 'package:hti_indonesia/src/config/colors/colors.dart';
import 'package:hti_indonesia/src/features/mobile/presentation/widgets/frame/mobile.dart';
import 'package:hti_indonesia/src/global/widgets/button/my_button.dart';

class MobilePage extends StatelessWidget {
  const MobilePage({super.key});

  @override
  Widget build(BuildContext context) {
    void navigateBack() {
      Navigator.pop(context);
    }

    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: Container(
        padding: const EdgeInsets.all(8.0),
        alignment: Alignment.center,
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const MobileApp(),
            const SizedBox(height: 24),
            SizedBox(
              width: 360,
              child: MyButton(
                labelText: "Back",
                onPressed: navigateBack,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
