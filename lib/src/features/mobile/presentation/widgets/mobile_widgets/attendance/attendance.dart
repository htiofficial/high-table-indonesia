import 'package:flutter/material.dart';
import 'package:hti_indonesia/src/config/colors/colors.dart';
import 'package:hti_indonesia/src/config/font/font.dart';
import 'package:hti_indonesia/src/features/mobile/presentation/widgets/mobile_widgets/attendance/emoji_slider.dart';
import 'package:hti_indonesia/src/features/mobile/presentation/widgets/mobile_widgets/my_back_header.dart';
import 'package:hti_indonesia/src/features/mobile/presentation/widgets/mobile_widgets/my_toggle_button.dart';
import 'package:hti_indonesia/src/global/widgets/button/my_button.dart';
import 'package:hti_indonesia/src/global/widgets/text/my_text.dart';

class AttendancePage extends StatefulWidget {
  const AttendancePage({
    required this.function,
    super.key,
  });

  final List function;

  @override
  State<AttendancePage> createState() => _AttendancePageState();
}

class _AttendancePageState extends State<AttendancePage> {
  final _listCondition = ['Sick', 'Not Well', 'Normal', 'Good', 'Healthy'];
  final _listIconWork = [
    Icons.house_outlined,
    Icons.maps_home_work_outlined,
    Icons.airplane_ticket_rounded,
  ];
  final _listStringWork = ['WFH', 'Office', 'On Duty'];

  final _listIconVehicle = [
    Icons.directions_walk,
    Icons.car_repair_outlined,
    Icons.directions_bus_filled_outlined,
  ];
  final _listSTringVehicle = ['Walk', 'Personal', 'Public'];

  bool _isWFH = false;
  bool _isWorkValid = false;
  bool _isVehicleValid = false;

  void _onSelectionWork(List<bool> isSelected) {
    if (isSelected.first) {
      setState(() {
        _isWFH = true;
        _isVehicleValid = true;
      });
    } else {
      setState(() {
        _isWFH = false;
      });
    }
    setState(() {
      _isWorkValid = true;
    });
  }

  void _onSelectionVehicle(List<bool> isSelected) {
    if (_isWorkValid && !_isWFH) {
      setState(() {
        _isVehicleValid = isSelected.firstWhere((element) => element == true);
      });
    }
  }

  void _onTap() {
    final statusIn = widget.function[0]['status'];
    if (!statusIn) {
      widget.function[1]['function']();
    } else {
      widget.function[3]['function']();
    }
  }

  @override
  Widget build(BuildContext context) {
    dynamic function;

    if (_isWorkValid && _isVehicleValid) {
      setState(() {
        function = _onTap;
      });
    }

    Widget button = MyButton(
      labelText: 'Presensi',
      onPressed: function,
      fontSize: AppFontSize.description,
    );

    return Column(
      children: [
        Row(
          children: [
            MyBackHeader(
              title: 'Attendance',
              onPressed: widget.function[4]['function'],
            ),
            const Spacer(),
            const MyText(
              text: 'GPS On',
              fontSize: AppFontSize.caption,
              fontWeight: AppFontWeight.bold,
            ),
            const SizedBox(width: 8),
            Container(
              height: 32,
              width: 32,
              decoration: BoxDecoration(
                color: AppColors.success50,
                border: Border.all(color: AppColors.successColor),
                borderRadius: BorderRadius.circular(8),
              ),
              child: const Icon(
                Icons.location_on_outlined,
                size: 20,
                color: AppColors.successColor,
              ),
            ),
            const SizedBox(width: 24),
          ],
        ),
        const SizedBox(height: 24),
        const MyText(
          text: 'How are you today?',
          fontSize: AppFontSize.body,
        ),
        const SizedBox(height: 16),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: MyEmojiSlider(
            onChange: (int i) {},
            options: _listCondition,
          ),
        ),
        const Divider(),
        const SizedBox(height: 16),
        const MyText(
          text: 'Where do you work?',
          fontSize: AppFontSize.body,
        ),
        const SizedBox(height: 16),
        MyToggleButton(
          iconList: _listIconWork,
          textList: _listStringWork,
          isDisabled: false,
          onSelection: _onSelectionWork,
        ),
        const SizedBox(height: 16),
        const Divider(),
        const SizedBox(height: 16),
        const MyText(
          text: 'What transportation do you use?',
          fontSize: AppFontSize.body,
        ),
        const SizedBox(height: 16),
        MyToggleButton(
          iconList: _listIconVehicle,
          textList: _listSTringVehicle,
          isDisabled: _isWFH,
          onSelection: _onSelectionVehicle,
        ),
        const Spacer(),
        const Divider(),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: button,
        ),
      ],
    );
  }
}
