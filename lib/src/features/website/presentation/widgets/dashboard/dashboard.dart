import 'package:flutter/material.dart';
import 'package:hti_indonesia/src/features/website/presentation/widgets/dashboard/employee/dashboard_employee.dart';
import 'package:hti_indonesia/src/features/website/presentation/widgets/dashboard/notification/dashboard_notification.dart';
import 'package:hti_indonesia/src/features/website/presentation/widgets/dashboard/reporting/dashboard_report.dart';

class MyDashboardWebsite extends StatefulWidget {
  const MyDashboardWebsite({super.key});

  @override
  State<MyDashboardWebsite> createState() => _MyDashboardWebsiteState();
}

class _MyDashboardWebsiteState extends State<MyDashboardWebsite> {
  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(16),
      child: Row(
        children: [
          Expanded(
            flex: 8,
            child: Column(
              children: [
                DashboardReporting(),
                SizedBox(height: 16),
                DashboardEmployee(),
              ],
            ),
          ),
          SizedBox(width: 8),
          Expanded(
            flex: 3,
            child: DashbordNotification(),
          ),
        ],
      ),
    );
  }
}
