import 'package:flutter/material.dart';
import 'package:hti_indonesia/src/config/colors/colors.dart';
import 'package:hti_indonesia/src/config/font/font.dart';
import 'package:hti_indonesia/src/features/website/data/models/employee.dart';
import 'package:hti_indonesia/src/features/website/presentation/widgets/dashboard/employee/status_employee.dart';
import 'package:hti_indonesia/src/global/functions/date_formatter/date_formatter.dart';
import 'package:hti_indonesia/src/global/widgets/text/my_text.dart';

class DashboardEmployeeList extends StatelessWidget {
  const DashboardEmployeeList({
    required this.employees,
    required this.headers,
    super.key,
  });

  final List<EmployeeModel> employees;
  final List<String> headers;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Table(
              border: TableBorder.symmetric(
                inside: const BorderSide(color: AppColors.neutral100)
              ),
              defaultVerticalAlignment: TableCellVerticalAlignment.middle,
              columnWidths: const {
                0: FlexColumnWidth(4),
                1: FlexColumnWidth(5),
                2: FlexColumnWidth(4),
                3: FlexColumnWidth(2),
              },
              children: [
                TableRow(
                  children: [
                    for (final header in headers)
                      Container(
                        color: AppColors.neutral100,
                        padding: const EdgeInsets.symmetric(
                          horizontal: 16,
                          vertical: 8,
                        ),
                        child: MyText(
                          text: header,
                          fontSize: AppFontSize.caption,
                          color: AppColors.primaryColor,
                          textAlign: TextAlign.start,
                        ),
                      ),
                  ],
                ),
                for (final employee in employees)
                  TableRow(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 16,
                          vertical: 8,
                        ),
                        child: Row(
                          children: [
                            ClipOval(
                              child: Image.network(
                                employee.url,
                                height: 36,
                                fit: BoxFit.fitHeight,
                              ),
                            ),
                            const SizedBox(width: 4),
                            Container(
                              padding: const EdgeInsets.all(8.0),
                              child: MyText(
                                text: employee.name,
                                fontSize: AppFontSize.caption,
                                textAlign: TextAlign.start,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        child: MyText(
                          text: employee.role,
                          fontSize: AppFontSize.caption,
                          textAlign: TextAlign.start,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        child: MyText(
                          text: formatDate(employee.joinDate, 'dd MMM yyyy') ,
                          fontSize: AppFontSize.caption,
                          textAlign: TextAlign.start,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        child: MyEmployeeStatus(
                          status: employee.status,
                        ),
                      ),
                    ],
                  ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
