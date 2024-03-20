import 'package:flutter/material.dart';
import 'package:hti_indonesia/src/config/colors/colors.dart';
import 'package:hti_indonesia/src/config/font/font.dart';
import 'package:hti_indonesia/src/features/mobile/data/models/notif.dart';
import 'package:hti_indonesia/src/features/mobile/presentation/widgets/mobile_widgets/notification/notification_list.dart';
import 'package:hti_indonesia/src/global/widgets/text/my_text.dart';

class MyNotificationPage extends StatelessWidget {
  final dynamic onPressed;

  const MyNotificationPage({required this.onPressed, super.key});

  @override
  Widget build(BuildContext context) {
    final List<NotifModel> notifs = [
      NotifModel(
        id: '',
        judul: 'Pengajuan Cuti Telah Disetujui',
        uraian:
            'Silakan buka menu cuti untuk melihat detail dan status pengajuan lebih lanjut',
        tanggal: DateTime.now().toString(),
        icon: Icons.notifications_none_rounded,
        isRead: false,
      ),
      NotifModel(
        id: '',
        judul: 'Pengajuan Cuti Berhasil',
        uraian: 'Anda baru saja mengajukan cuti',
        tanggal: DateTime.now().toString(),
        icon: Icons.notifications_none_rounded,
        isRead: false,
      ),
      NotifModel(
        id: '',
        judul: 'Hari Ulang Tahun Perusahaan ke-20',
        uraian: 'Keluarga besar perusahaan turut berbahagia atas bertambahnya',
        tanggal: DateTime.now().toString(),
        icon: Icons.notifications_none_rounded,
        isRead: false,
      ),
      NotifModel(
        id: '',
        judul: 'Pengumuman Penting',
        uraian: 'Mohon perhatian semua karyawan terkait pengumuman penting ini',
        tanggal: DateTime(2024, 3, 19).toString(),
        icon: Icons.notifications_none_rounded,
        isRead: false,
      ),
      NotifModel(
        id: '',
        judul: 'Pengumuman Rapat Bulanan',
        uraian: 'Jangan lupa untuk hadir di rapat bulanan minggu depan',
        tanggal: DateTime(2024, 3, 18).toString(),
        icon: Icons.notifications_none_rounded,
        isRead: false,
      ),
      NotifModel(
        id: '',
        judul: 'Peringatan Pembaruan Data',
        uraian: 'Mohon perbarui data pribadi Anda dalam sistem perusahaan',
        tanggal: DateTime(2024, 3, 17).toString(),
        icon: Icons.notifications_none_rounded,
        isRead: false,
      ),
      NotifModel(
        id: '',
        judul: 'Pengingat Tugas Baru',
        uraian: 'Anda memiliki tugas baru yang harus diselesaikan secepatnya',
        tanggal: DateTime(2024, 3, 16).toString(),
        icon: Icons.notifications_none_rounded,
        isRead: false,
      ),
    ];

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.max,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: TextButton(
            onPressed: onPressed,
            child: const Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(
                  Icons.arrow_back_ios_new,
                  color: AppColors.baseBlack,
                ),
                SizedBox(width: 4),
                MyText(
                  text: 'Notification',
                  fontSize: AppFontSize.body,
                  fontWeight: AppFontWeight.bold,
                ),
              ],
            ),
          ),
        ),
        Expanded(child: NotifList(notifs: notifs)),
      ],
    );
  }
}
