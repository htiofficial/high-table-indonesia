import 'package:flutter/material.dart';
import 'package:hti_indonesia/src/global/widgets/text/my_text.dart';

class MyDashboardWebsite extends StatelessWidget {
  const MyDashboardWebsite({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        MyText(text: 'Dashboard', fontSize: 16)
      ],
    );
  }
}
