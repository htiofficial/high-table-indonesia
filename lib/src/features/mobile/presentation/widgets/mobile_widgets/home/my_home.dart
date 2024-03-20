import 'package:flutter/material.dart';
import 'package:hti_indonesia/src/features/mobile/presentation/widgets/mobile_widgets/home/my_attendance.dart';
import 'package:hti_indonesia/src/features/mobile/presentation/widgets/mobile_widgets/home/my_news.dart';
import 'package:hti_indonesia/src/features/mobile/presentation/widgets/mobile_widgets/home/my_profile.dart';
import 'package:hti_indonesia/src/features/mobile/presentation/widgets/mobile_widgets/notification/notification.dart';

// class MyHome extends StatelessWidget {
//   const MyHome({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return const Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       mainAxisSize: MainAxisSize.max,
//       children: [
//         MyProfile(),
//         SizedBox(height: 16),
//         MyAttendance(),
//         SizedBox(height: 6),
//         MyNews(),
//       ],
//     );
//   }
// }

class MyHome extends StatefulWidget {
  const MyHome({super.key});

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  late Widget currentWidget;

  bool _isHome = true;

  void _changeWidget() {
    setState(() {
      _isHome = !_isHome;
    });
  }

  @override
  Widget build(BuildContext context) {
    final homeWidget = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.max,
      children: [
        MyProfile(
          onPressed: _changeWidget,
        ),
        const SizedBox(height: 12),
        const MyAttendance(),
        const MyNews(),
      ],
    );

    if (_isHome) {
      setState(() {
        currentWidget = homeWidget;
      });
    } else {
      setState(() {
        currentWidget = MyNotificationPage(onPressed: _changeWidget);
      });
    }
    return currentWidget;
  }
}
