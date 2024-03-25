import 'package:flutter/material.dart';
import 'package:hti_indonesia/src/config/colors/colors.dart';
import 'package:hti_indonesia/src/config/font/font.dart';
import 'package:hti_indonesia/src/features/website/data/models/notification.dart';
import 'package:hti_indonesia/src/features/website/presentation/widgets/dashboard/notification/dashboard_notification_list.dart';
import 'package:hti_indonesia/src/global/widgets/button/my_button.dart';
import 'package:hti_indonesia/src/global/widgets/text/my_text.dart';
import 'package:hti_indonesia/src/global/widgets/textformfield/my_textformfield.dart';

class DashbordNotification extends StatefulWidget {
  const DashbordNotification({super.key});

  @override
  State<DashbordNotification> createState() => _DashbordNotificationState();
}

class _DashbordNotificationState extends State<DashbordNotification> {
  final List<DashboardNotifModel> notifs = [
    DashboardNotifModel(
      id: '',
      title: 'Approved Leave Request',
      description:
          'Please open the leave menu to see more details and the status of your request',
      date: DateTime.now().toString(),
      icon: Icons.notifications_none_rounded,
      isRead: false,
    ),
    DashboardNotifModel(
      id: '',
      title: 'Leave Request Successful',
      description: 'You have just submitted a leave request',
      date: DateTime.now().toString(),
      icon: Icons.notifications_none_rounded,
      isRead: false,
    ),
    DashboardNotifModel(
      id: '',
      title: '20th Anniversary of the Company',
      description:
          'The entire company family celebrates the company\'s joyous anniversary',
      date: DateTime.now().toString(),
      icon: Icons.notifications_none_rounded,
      isRead: false,
    ),
    DashboardNotifModel(
      id: '',
      title: 'Important Announcement',
      description:
          'Attention all employees regarding this important announcement',
      date: DateTime.now().subtract(const Duration(days: 2)).toString(),
      icon: Icons.notifications_none_rounded,
      isRead: false,
    ),
    DashboardNotifModel(
      id: '',
      title: 'Monthly Meeting Announcement',
      description: 'Don\'t forget to attend the monthly meeting next week',
      date: DateTime.now().subtract(const Duration(days: 3)).toString(),
      icon: Icons.notifications_none_rounded,
      isRead: false,
    ),
    DashboardNotifModel(
      id: '',
      title: 'Data Update Reminder',
      description: 'Please update your personal data in the company system',
      date: DateTime.now().subtract(const Duration(days: 5)).toString(),
      icon: Icons.notifications_none_rounded,
      isRead: false,
    ),
    DashboardNotifModel(
      id: '',
      title: 'Approval Reminder',
      description: 'You have approvals pending. Please review them promptly.',
      date: DateTime.now().subtract(const Duration(days: 6)).toString(),
      icon: Icons.notifications_none_rounded,
      isRead: false,
    ),
    DashboardNotifModel(
      id: '',
      title: 'Approval Reminder',
      description: 'You have approvals pending. Please review them promptly.',
      date: DateTime.now().subtract(const Duration(days: 6)).toString(),
      icon: Icons.notifications_none_rounded,
      isRead: false,
    ),
  ];

  void _addNotification({
    required String title,
    required String description,
  }) {
    setState(() {
      notifs.insert(
        0,
        DashboardNotifModel(
          id: '',
          title: title,
          description: description,
          date: DateTime.now().toString(),
          icon: Icons.notifications_outlined,
          isRead: false,
        ),
      );
    });
  }

  String? _isTitleValid(String? value) {
    if (value == null || value.isEmpty) {
      return "Please insert a valid title";
    } else {
      return null;
    }
  }

  String? _isDescriptionValid(String? value) {
    if (value == null || value.isEmpty) {
      return "Please insert a valid description";
    } else {
      return null;
    }
  }

  Future<void> _showOverlayAdd() {
    final formKey = GlobalKey<FormState>();
    final titleController = TextEditingController();
    final descriptionController = TextEditingController();
    return showDialog<void>(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
          title: const Text('Add Announcement'),
          content: SizedBox(
            width: 480,
            child: SingleChildScrollView(
              child: Form(
                key: formKey,
                child: Column(
                  children: [
                    MyTextFormField(
                      controller: titleController,
                      labelText: 'Title',
                      hintText: 'Input notification\'s title',
                      validator: _isTitleValid,
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                    ),
                    const SizedBox(height: 16),
                    MyTextFormField(
                      controller: descriptionController,
                      labelText: 'Description',
                      hintText: 'Input notification\'s description',
                      validator: _isDescriptionValid,
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                    ),
                  ],
                ),
              ),
            ),
          ),
          actions: <Widget>[
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 16,
                vertical: 8,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(
                    child: const MyText(
                      text: 'Cancel',
                      fontSize: AppFontSize.description,
                      color: AppColors.primaryColor,
                    ),
                    onPressed: () {
                      titleController.dispose();
                      descriptionController.dispose();
                      Navigator.of(context).pop();
                    },
                  ),
                  const SizedBox(width: 16),
                  SizedBox(
                    width: 80,
                    child: MyButton(
                      labelText: 'Add',
                      onPressed: () {
                        if (formKey.currentState!.validate()) {
                          _addNotification(
                              title: titleController.text,
                              description: descriptionController.text);
                          Navigator.of(context).pop();
                          _showOverlaySuccess();
                        }
                      },
                      fontSize: AppFontSize.description,
                    ),
                  ),
                ],
              ),
            ),
          ],
        );
      },
    );
  }

  Future<void> _showOverlaySuccess() {
    return showDialog<void>(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
          content: const SizedBox(
            width: 480,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.check_circle_outline,
                  size: 140,
                  color: AppColors.successColor,
                ),
                SizedBox(height: 16),
                MyText(
                  text: 'Announcement Added',
                  fontSize: AppFontSize.title,
                ),
                SizedBox(height: 16),
                MyText(
                  text:
                      'Announcement Successfully Added and employee will get the notification.',
                  fontSize: AppFontSize.body,
                  color: AppColors.neutralColor,
                ),
              ],
            ),
          ),
          actions: <Widget>[
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 16,
                vertical: 8,
              ),
              child: MyButton(
                labelText: 'Back',
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Card(
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
            child: Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                const MyText(
                  text: 'Announcements',
                  fontSize: AppFontSize.body,
                  fontWeight: AppFontWeight.bold,
                ),
                const Spacer(),
                MyButton(
                  labelText: "+ Add New",
                  fontSize: AppFontSize.caption,
                  onPressed: _showOverlayAdd,
                  isOutline: true,
                  radius: 8,
                ),
              ],
            ),
          ),
          const Divider(),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: DashboardNotifList(
                notifs: notifs,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
