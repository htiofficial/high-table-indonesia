import 'package:flutter/material.dart';
import 'package:hti_indonesia/src/config/colors/colors.dart';
import 'package:hti_indonesia/src/config/font/font.dart';
import 'package:hti_indonesia/src/features/website/data/models/notification.dart';
import 'package:hti_indonesia/src/features/website/presentation/widgets/dashboard/notification/dashboard_notification_item.dart';
import 'package:hti_indonesia/src/global/functions/categorize_formatter/categorize_web_formatter.dart';
import 'package:hti_indonesia/src/global/widgets/text/my_text.dart';

class DashboardNotifList extends StatelessWidget {
  const DashboardNotifList({
    required this.notifs,
    super.key,
  });

  final List<DashboardNotifModel> notifs;

  @override
  Widget build(BuildContext context) {
    final listCategorized = categorizeWebNotifications(DateTime.now(), notifs);
    return ListView.builder(
      itemCount: notifs.length + 1,
      itemBuilder: (ctx, index) {
        if (index < notifs.length) {
          return DashboardNotifItem(
            catNotif: listCategorized[index],
          );
        } else {
          return const Padding(
            padding: EdgeInsets.symmetric(vertical: 16),
            child: Center(
              child: MyText(
                text: 'No more data to show',
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
