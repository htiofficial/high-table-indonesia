import 'package:flutter/material.dart';
import 'package:hti_indonesia/src/config/colors/colors.dart';
import 'package:hti_indonesia/src/features/mobile/presentation/widgets/mobile_widgets/attendance/attendance.dart';
import 'package:hti_indonesia/src/features/mobile/presentation/widgets/mobile_widgets/main/mobile_main.dart';
import 'package:hti_indonesia/src/features/mobile/presentation/widgets/mobile_widgets/my_footer.dart';
import 'package:hti_indonesia/src/features/mobile/presentation/widgets/mobile_widgets/my_header.dart';
import 'package:hti_indonesia/src/features/mobile/presentation/widgets/mobile_widgets/success/overlay_success.dart';

class MobileApp extends StatefulWidget {
  const MobileApp({super.key});

  @override
  State<MobileApp> createState() => _MobileAppState();
}

class _MobileAppState extends State<MobileApp> {
  int selectedIndex = 0;
  bool attInStatus = false;
  bool attOutStatus = false;
  bool _isSuccess = false;
  List<String> _messages = [];

  void _onTapAttIn() {
    setState(() {
      selectedIndex = 1;
    });
  }

  void _onTapAttInFill() {
    setState(() {
      attInStatus = true;
    });
    _showSuccess([
      'Attendance Success',
      'Congratulations on your punctuality in arriving on time today!',
    ]);
  }

  void _onTapAttOut() {
    setState(() {
      selectedIndex = 1;
    });
  }

  void _onTapAttOutFill() {
    setState(() {
      attOutStatus = true;
    });
    _showSuccess([
      'Attendance Success',
      'Congratulations on your punctuality in arriving on time today!',
    ]);
  }

  void _onTapBackAttendance() {
    setState(() {
      selectedIndex = 0;
      _isSuccess = false;
    });
  }

  void _showSuccess(List<String> messages) {
    setState(() {
      _isSuccess = true;
      _messages = messages;
    });
  }

  @override
  Widget build(BuildContext context) {
    Widget overlaySuccess = OverlaySuccess(
      messages: _messages,
      onTap: _onTapBackAttendance,
    );

    final List<dynamic> attendanceFunction = [
      {
        'name': 'attendance-in',
        'function': _onTapAttIn,
        'status': attInStatus,
      },
      {
        'name': 'attendance-in',
        'function': _onTapAttInFill,
        'status': attInStatus,
      },
      {
        'name': 'attendance-out',
        'function': _onTapAttOut,
        'status': attOutStatus,
      },
      {
        'name': 'attendance-out',
        'function': _onTapAttOutFill,
        'status': attOutStatus,
      },
      {
        'name': 'attendance-back',
        'function': _onTapBackAttendance,
        // 'status': attInStatus,
      },
    ];

    final listPage = [
      MobileMain(attendanceFunction: attendanceFunction),
      AttendancePage(function: attendanceFunction),
    ];

    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(64.0),
        border: Border.all(
          color: AppColors.baseBlack,
          width: 12,
        ),
      ),
      clipBehavior: Clip.hardEdge,
      height: 2340 / 3,
      width: 1080 / 3,
      child: Container(
        decoration: BoxDecoration(
          color: AppColors.white,
          borderRadius: BorderRadius.circular(52),
        ),
        child: Stack(
          children: [
            Column(
              children: [
                const MyHeaderMobile(),
                Expanded(
                  child: listPage.elementAt(selectedIndex),
                ),
                const MyFooterMobile(),
              ],
            ),
            if (_isSuccess) overlaySuccess,
          ],
        ),
      ),
    );
  }
}
