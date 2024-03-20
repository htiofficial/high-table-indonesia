import 'package:flutter/material.dart';
import 'package:hti_indonesia/src/features/mobile/data/models/notif.dart';
import 'package:hti_indonesia/src/features/mobile/presentation/widgets/mobile_widgets/notification/notification_list.dart';

class MyNotificationPage extends StatelessWidget {
  const MyNotificationPage({super.key});

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

    return SizedBox(
      child: NotifList(notifs: notifs),
    );
  }
}
