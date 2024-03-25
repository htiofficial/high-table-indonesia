import 'package:flutter/material.dart';
import 'package:hti_indonesia/src/config/font/font.dart';
import 'package:hti_indonesia/src/global/widgets/text/my_text.dart';

class MyMasterWebsite extends StatelessWidget {
  const MyMasterWebsite({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: MyText(
        text: 'Under Development',
        fontSize: AppFontSize.description,
      ),
    );
  }
}
