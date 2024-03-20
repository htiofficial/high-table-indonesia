import 'package:flutter/material.dart';
import 'package:hti_indonesia/src/config/colors/colors.dart';
import 'package:hti_indonesia/src/config/font/font.dart';
import 'package:hti_indonesia/src/features/mobile/data/models/notif.dart';
import 'package:hti_indonesia/src/features/mobile/presentation/widgets/mobile_widgets/notification/notification_item.dart';
import 'package:hti_indonesia/src/global/functions/categorize_formatter/categorize_formatter.dart';
import 'package:hti_indonesia/src/global/widgets/text/my_text.dart';

class NotifList extends StatelessWidget {
  const NotifList({
    required this.notifs,
    super.key,
  });

  final List<NotifModel> notifs;

  @override
  Widget build(BuildContext context) {
    final listCategorized = categorizeNotifications(DateTime.now(), notifs);
    return ListView.builder(
      itemCount: notifs.length + 1,
      itemBuilder: (ctx, index) {
        if (index < notifs.length) {
          return NotifItem(
            catNotif: listCategorized[index],
          );
        } else {
          return const Padding(
            padding: EdgeInsets.symmetric(vertical: 24),
            child: Center(
              child: MyText(
                text: 'Tidak ada data yang dapat dimuat lagi',
                fontSize: AppFontSize.description,
                color: AppColors.neutralColor,
              ),
            ),
          );
        }
      },
    );
  }
}
