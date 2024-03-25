import 'package:flutter/material.dart';
import 'package:hti_indonesia/src/config/colors/colors.dart';
import 'package:hti_indonesia/src/config/font/font.dart';
import 'package:hti_indonesia/src/features/website/data/models/employee.dart';
import 'package:hti_indonesia/src/features/website/presentation/widgets/dashboard/employee/dashboard_employee_list.dart';
import 'package:hti_indonesia/src/global/widgets/text/my_text.dart';

class DashboardEmployee extends StatefulWidget {
  const DashboardEmployee({super.key});

  @override
  State<DashboardEmployee> createState() => _DashboardEmployeeState();
}

class _DashboardEmployeeState extends State<DashboardEmployee> {
  final List<EmployeeModel> employees = [
    EmployeeModel(
      name: 'John Doe',
      role: 'Software Engineer',
      joinDate: DateTime.now().subtract(const Duration(days: 30)).toString(),
      status: 'Active',
      url: 'https://i.pravatar.cc/150?img=1',
    ),
    EmployeeModel(
      name: 'Jane Smith',
      role: 'Product Manager',
      joinDate: DateTime.now().subtract(const Duration(days: 30)).toString(),
      status: 'Active',
      url: 'https://i.pravatar.cc/150?img=2',
    ),
    EmployeeModel(
      name: 'Alice Johnson',
      role: 'UX/UI Designer',
      joinDate: DateTime.now().subtract(const Duration(days: 30)).toString(),
      status: 'On Leave',
      url: 'https://i.pravatar.cc/150?img=3',
    ),
    EmployeeModel(
      name: 'Bob Williams',
      role: 'Marketing Specialist',
      joinDate: DateTime.now().subtract(const Duration(days: 30)).toString(),
      status: 'Active',
      url: 'https://i.pravatar.cc/150?img=4',
    ),
    EmployeeModel(
      name: 'Emily Brown',
      role: 'HR Manager',
      joinDate: DateTime.now().subtract(const Duration(days: 30)).toString(),
      status: 'On Leave',
      url: 'https://i.pravatar.cc/150?img=5',
    ),
    EmployeeModel(
      name: 'Michael Davis',
      role: 'Financial Analyst',
      joinDate: DateTime.now().subtract(const Duration(days: 30)).toString(),
      status: 'Active',
      url: 'https://i.pravatar.cc/150?img=6',
    ),
    EmployeeModel(
      name: 'Samantha Wilson',
      role: 'Customer Support Representative',
      joinDate: DateTime.now().subtract(const Duration(days: 30)).toString(),
      status: 'Active',
      url: 'https://i.pravatar.cc/150?img=7',
    ),
    EmployeeModel(
      name: 'David Miller',
      role: 'Operations Manager',
      joinDate: DateTime.now().subtract(const Duration(days: 30)).toString(),
      status: 'Active',
      url: 'https://i.pravatar.cc/150?img=8',
    ),
    EmployeeModel(
      name: 'Olivia Martinez',
      role: 'Sales Executive',
      joinDate: DateTime.now().subtract(const Duration(days: 30)).toString(),
      status: 'Active',
      url: 'https://i.pravatar.cc/150?img=9',
    ),
    EmployeeModel(
      name: 'William Garcia',
      role: 'Data Scientist',
      joinDate: DateTime.now().subtract(const Duration(days: 30)).toString(),
      status: 'Active',
      url: 'https://i.pravatar.cc/150?img=10',
    ),
  ];

  final headers = ['Name', 'Role', 'Join Date', 'Status'];
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Card(
        color: AppColors.white,
        clipBehavior: Clip.hardEdge,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.fromLTRB(
                16,
                16,
                16,
                0,
              ),
              child: const MyText(
                text: 'Employees',
                fontSize: AppFontSize.body,
                fontWeight: AppFontWeight.bold,
              ),
            ),
            const Divider(),
            DashboardEmployeeList(
              employees: employees,
              headers: headers,
            ),
          ],
        ),
      ),
    );
  }
}
