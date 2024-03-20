import 'package:flutter/material.dart';
import 'package:hti_indonesia/src/global/functions/date_formatter/date_formatter.dart';

class NotifModel {
  final String id;
  final String judul;
  final String uraian;
  final String tanggal;
  final IconData icon;
  final bool isRead;

  NotifModel({
    required this.id,
    required this.judul,
    required this.uraian,
    required this.tanggal,
    required this.icon,
    required this.isRead,
  });

  String get tanggalFormatted {
    return formatDate(tanggal, 'dd MMM yyyy');
  }

  factory NotifModel.fromJson(Map<String, dynamic> json) {
    return NotifModel(
      id: json['id'] as String,
      judul: json['title'] as String,
      uraian: json['message'] as String,
      tanggal: json['createdDate'] as String,
      icon: json['icon'] as IconData,
      isRead: json['isRead'] as bool,
    );
  }
}
