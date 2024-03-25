import 'package:flutter/material.dart';
import 'package:hti_indonesia/src/config/colors/colors.dart';
import 'package:hti_indonesia/src/config/font/font.dart';
import 'package:hti_indonesia/src/features/website/data/models/employee.dart';
import 'package:hti_indonesia/src/features/website/presentation/widgets/dashboard/employee/status_employee.dart';
import 'package:hti_indonesia/src/global/widgets/text/my_text.dart';

class DashboardEmployeeItem extends StatelessWidget {
  final EmployeeModel model;
  const DashboardEmployeeItem({
    required this.model,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(8),
      child: Column(
        children: [
          Row(
            children: [
              ClipOval(
                child: Image.network(
                  model.url,
                  height: 48,
                  fit: BoxFit.fitHeight,
                ),
              ),
              const SizedBox(width: 8),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  MyText(
                    text: model.name,
                    fontSize: AppFontSize.description,
                    textAlign: TextAlign.start,
                  ),
                  const SizedBox(height: 4),
                  MyText(
                    text: model.role,
                    fontSize: AppFontSize.caption,
                    textAlign: TextAlign.start,
                    color: AppColors.neutralColor,
                  ),
                ],
              ),
              const Spacer(),
              MyEmployeeStatus(status: model.status),
            ],
          ),
          const Divider(),
        ],
      ),
    );
  }
}
