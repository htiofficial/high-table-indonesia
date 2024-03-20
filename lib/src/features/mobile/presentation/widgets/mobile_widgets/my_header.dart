import 'package:flutter/material.dart';
import 'package:hti_indonesia/src/config/colors/colors.dart';
import 'package:hti_indonesia/src/config/font/font.dart';
import 'package:hti_indonesia/src/global/widgets/text/my_text.dart';
import 'package:intl/intl.dart';

class MyHeaderMobile extends StatelessWidget {
  const MyHeaderMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 32,
        vertical: 16,
      ),
      child: Stack(
        children: [
          Center(
            child: Container(
              decoration: BoxDecoration(
                color: AppColors.baseBlack,
                borderRadius: BorderRadius.circular(16),
              ),
              width: 96,
              height: 28,
            ),
          ),
          SizedBox(
            height: 28,
            child: Row(
              children: [
                MyText(
                  text: DateFormat.Hm().format(DateTime.now()).toString(),
                  fontSize: 14,
                  fontWeight: AppFontWeight.semiBold,
                ),
                const Spacer(),
                const Icon(
                  Icons.signal_cellular_alt_rounded,
                  size: 18,
                ),
                const SizedBox(width: 4),
                const Icon(
                  Icons.wifi,
                  size: 18,
                ),
                const SizedBox(width: 4),
                Transform.rotate(
                  angle: 90 * 3.1415927 / 180,
                  child: const Icon(
                    Icons.battery_4_bar,
                    size: 18,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
