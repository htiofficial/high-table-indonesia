import 'package:flutter/material.dart';
import 'package:hti_indonesia/src/global/functions/date_formatter/date_formatter.dart';

class DashboardNotifModel {
  final String id;
  final String title;
  final String description;
  final String date;
  final IconData icon;
  final bool isRead;

  DashboardNotifModel({
    required this.id,
    required this.title,
    required this.description,
    required this.date,
    required this.icon,
    required this.isRead,
  });
  String get dateFormatted {
    return formatDate(date, 'dd MMM yyyy');
  }

  factory DashboardNotifModel.fromJson(Map<String, dynamic> json) {
    return DashboardNotifModel(
      id: json['id'] as String,
      title: json['title'] as String,
      description: json['message'] as String,
      date: json['createdDate'] as String,
      icon: json['icon'] as IconData,
      isRead: json['isRead'] as bool,
    );
  }
}

class DashboardCatNotifModel {
  final DashboardNotifModel notif;
  final int category;

  DashboardCatNotifModel({
    required this.notif,
    required this.category,
  });
}
