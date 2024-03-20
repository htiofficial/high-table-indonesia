import 'package:hti_indonesia/src/features/mobile/data/models/notif.dart';

class CategorizedNotifModel {
  final NotifModel notif;
  final int category;

  CategorizedNotifModel({
    required this.notif,
    required this.category,
  });
}
