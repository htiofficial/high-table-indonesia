import 'package:flutter/material.dart';
import 'package:hti_indonesia/src/config/colors/colors.dart';
import 'package:hti_indonesia/src/config/font/font.dart';
import 'package:hti_indonesia/src/global/widgets/text/my_text.dart';

class MyToggleButton extends StatefulWidget {
  const MyToggleButton({
    required this.iconList,
    required this.textList,
    required this.onSelection,
    required this.isDisabled,
    super.key,
  });

  final List<IconData> iconList;
  final List<String> textList;
  final Function(List<bool>) onSelection;
  final bool isDisabled;

  @override
  State<MyToggleButton> createState() => _MyToggleButtonState();
}

class _MyToggleButtonState extends State<MyToggleButton> {
  late List<bool> _isSelected;

  @override
  void initState() {
    super.initState();
    _initSelection();
  }

  void _initSelection() {
    setState(() {
      _isSelected = List.generate(widget.iconList.length, (index) => false);
    });
  }

  Color _getContainerColor(bool status) {
    if (status) {
      return AppColors.primary400;
    } else {
      if (widget.isDisabled) {
        return AppColors.neutral100;
      } else {
        return AppColors.white;
      }
    }
  }

  Color _getBorderColor(bool status) {
    if (status) {
      return AppColors.primary400;
    } else {
      return AppColors.neutral300;
    }
  }

  Color _getIconColor(bool status) {
    if (status) {
      return AppColors.white;
    } else {
      if (widget.isDisabled) {
        return AppColors.neutral400;
      } else {
        return AppColors.primaryColor;
      }
    }
  }

  _onTap(int i) {
    final currentIndex = _isSelected.indexOf(true);
    if (currentIndex != -1) {
      setState(() {
        _isSelected[currentIndex] = false;
      });
    }
    setState(() {
      _isSelected[i] = true;
    });
    widget.onSelection(_isSelected);
  }

  @override
  Widget build(BuildContext context) {
    if (widget.isDisabled) {
      _initSelection();
    }
    return Wrap(
      spacing: 32,
      children: [
        for (int i = 0; i < widget.iconList.length; i++)
          GestureDetector(
            onTap: () {
              _onTap(i);
            },
            child: Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: _getContainerColor(_isSelected[i]),
                    border: Border.all(
                      color: _getBorderColor(_isSelected[i]),
                    ),
                    borderRadius: BorderRadius.circular(16),
                  ),
                  width: 54,
                  height: 54,
                  alignment: Alignment.center,
                  child: Icon(
                    widget.iconList[i],
                    color: _getIconColor(_isSelected[i]),
                    size: 24,
                  ),
                ),
                const SizedBox(height: 8),
                MyText(
                  text: widget.textList[i],
                  fontSize: AppFontSize.description,
                ),
              ],
            ),
          ),
      ],
    );
  }
}
