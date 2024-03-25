import 'package:hti_indonesia/src/features/website/data/models/notification.dart';

List<DashboardCatNotifModel> categorizeWebNotifications(
    DateTime now, List<DashboardNotifModel> notifList) {
  if (notifList.isEmpty) {
    return [];
  }

  List<DashboardCatNotifModel> categorizedList = [];
  DateTime today = DateTime(now.year, now.month, now.day);

  DateTime startOfWeek = today.subtract(Duration(days: today.weekday - 1));
  DateTime endOfWeek = startOfWeek.add(Duration(days: 6 - today.weekday + 7));

  DateTime startOfMonth = DateTime(today.year, today.month, 1);
  DateTime endOfMonth = DateTime(today.year, today.month + 1, 0, 23, 59, 59);

  DateTime? latestToday;
  DateTime? latestThisWeek;
  DateTime? latestThisMonth;
  // check if its today?
  bool isToday(DateTime date) {
    return date.year == now.year &&
        date.month == now.month &&
        date.day == now.day;
  }

  for (DashboardNotifModel notif in notifList) {
    DateTime notifDate = DateTime.parse(notif.date);
    // latest today
    if (isToday(notifDate) && latestToday == null) {
      latestToday = notifDate;
      categorizedList.add(DashboardCatNotifModel(notif: notif, category: 1));
    } else if (
        // latest this week
        !isToday(notifDate) &&
            notifDate.isBefore(endOfWeek) &&
            notifDate.isAfter(startOfWeek) &&
            latestThisWeek == null) {
      // If it's in this week and the latest this week, set category to 2
      latestThisWeek = notifDate;
      categorizedList.add(DashboardCatNotifModel(notif: notif, category: 2));
    } else if (
        // latest this month
        !isToday(notifDate) &&
            notifDate.isBefore(startOfWeek) &&
            notifDate.isAfter(startOfMonth) &&
            notifDate.isBefore(endOfMonth) &&
            latestThisMonth == null) {
      // If it's in this month and the latest this month, set category to 3
      latestThisMonth = notifDate;
      categorizedList.add(DashboardCatNotifModel(notif: notif, category: 3));
    } else {
      categorizedList.add(DashboardCatNotifModel(notif: notif, category: 0));
    }
  }

  return categorizedList;
}
