import 'package:flutter/material.dart';
import 'package:hti_indonesia/src/features/website/presentation/widgets/dashboard/reporting/dashboard_report_item.dart';

class DashboardReporting extends StatefulWidget {
  const DashboardReporting({super.key});

  @override
  State<DashboardReporting> createState() => _DashboardReportingState();
}

class _DashboardReportingState extends State<DashboardReporting> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        DashboardReportItem(
          title: 'Total Employees',
          value: 1370,
          icon: Icons.people,
          changes: 0.15,
          compares: 'last month',
          onPressed: () {},
        ),
        DashboardReportItem(
          title: 'Total Attendance',
          value: 1356,
          icon: Icons.calendar_month_outlined,
          changes: 0.05,
          compares: 'yesterday',
          onPressed: () {},
        ),
        DashboardReportItem(
          title: 'Request Paid Leave',
          value: 10,
          icon: Icons.payments_outlined,
          changes: 0.1,
          compares: 'last month',
          onPressed: () {},
        ),
      ],
    );
  }
}
