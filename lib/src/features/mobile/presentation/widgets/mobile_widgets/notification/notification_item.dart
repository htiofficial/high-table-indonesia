import 'package:flutter/material.dart';
import 'package:hti_indonesia/src/config/colors/colors.dart';
import 'package:hti_indonesia/src/config/font/font.dart';
import 'package:hti_indonesia/src/features/mobile/data/models/categorized_model.dart';
import 'package:hti_indonesia/src/global/widgets/text/my_text.dart';

class NotifItem extends StatelessWidget {
  const NotifItem({
    required this.catNotif,
    super.key,
  });

  final CategorizedNotifModel catNotif;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (catNotif.category == 1)
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 12),
              child: MyText(
                text: 'Today',
                fontSize: AppFontSize.body,
                fontWeight: AppFontWeight.bold,
                textAlign: TextAlign.start,
              ),
            ),
          if (catNotif.category == 2)
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 12),
              child: MyText(
                text: 'This Week',
                fontSize: AppFontSize.body,
                fontWeight: AppFontWeight.bold,
                textAlign: TextAlign.start,
              ),
            ),
          if (catNotif.category == 3)
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 12),
              child: MyText(
                text: 'This Month',
                fontSize: AppFontSize.body,
                fontWeight: AppFontWeight.bold,
                textAlign: TextAlign.start,
              ),
            ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Badge(
                smallSize: 10,
                isLabelVisible: !catNotif.notif.isRead,
                backgroundColor: AppColors.errorColor,
                child: Container(
                  height: 56,
                  width: 56,
                  decoration: BoxDecoration(
                    color: AppColors.neutral100,
                    borderRadius: BorderRadius.circular(4),
                  ),
                  child: Icon(
                    catNotif.notif.icon,
                    color: AppColors.neutralColor,
                  ),
                ),
              ),
              const SizedBox(width: 12),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    MyText(
                      text: catNotif.notif.judul,
                      fontSize: AppFontSize.caption,
                      fontWeight: AppFontWeight.bold,
                      textAlign: TextAlign.start,
                    ),
                    const SizedBox(height: 4),
                    MyText(
                      text: catNotif.notif.uraian,
                      fontSize: AppFontSize.caption,
                      color: AppColors.neutralColor,
                      textAlign: TextAlign.start,
                    ),
                    const SizedBox(height: 8),
                    Row(children: [
                      const Spacer(),
                      MyText(
                        text: catNotif.notif.tanggalFormatted,
                        fontSize: AppFontSize.caption,
                        color: AppColors.neutralColor,
                      ),
                    ]),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
