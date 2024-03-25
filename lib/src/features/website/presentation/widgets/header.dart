import 'package:flutter/material.dart';
import 'package:hti_indonesia/src/config/font/font.dart';
import 'package:hti_indonesia/src/global/widgets/text/my_text.dart';

class MyHeaderWebsite extends StatelessWidget {
  const MyHeaderWebsite({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: MyText(
        text: 'Dashboard',
        fontSize: AppFontSize.body,
      ),
    );
  }
}
