import 'package:flutter/material.dart';
import 'package:hti_indonesia/src/config/colors/colors.dart';
import 'package:hti_indonesia/src/config/font/font.dart';
import 'package:hti_indonesia/src/global/widgets/button/my_button.dart';
import 'package:hti_indonesia/src/global/widgets/text/my_text.dart';

class MyExpertiseItem extends StatelessWidget {
  final String title;
  final String path;
  final dynamic onTap;
  final bool isAvailable;
  final EdgeInsetsGeometry? padding;

  const MyExpertiseItem({
    required this.title,
    required this.path,
    required this.onTap,
    required this.isAvailable,
    this.padding = const EdgeInsets.fromLTRB(24, 48, 24, 0),
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        alignment: Alignment.center,
        padding: padding,
        decoration: BoxDecoration(
          color: AppColors.blockColor,
          borderRadius: BorderRadius.circular(24),
        ),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                path,
                height: 200,
              ),
              const SizedBox(width: 54),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  MyText(
                    text: title,
                    fontSize: AppFontSize.title,
                  ),
                  const SizedBox(height: 12),
                  isAvailable
                      ? MyButton(
                          labelText: "Start Demo",
                          padding: const EdgeInsets.fromLTRB(
                            16,
                            16,
                            16,
                            14,
                          ),
                          onPressed: onTap,
                        )
                      : MyButton(
                          labelText: "Start Demo",
                          color: AppColors.neutral400,
                          padding: const EdgeInsets.fromLTRB(
                            16,
                            16,
                            16,
                            14,
                          ),
                          onPressed: () {},
                        ),
                  const SizedBox(height: 32),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
