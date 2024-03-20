import 'package:flutter/material.dart';
import 'package:hti_indonesia/src/config/colors/colors.dart';
import 'package:hti_indonesia/src/config/font/font.dart';

class MyButton extends StatefulWidget {
  final String labelText;
  final void Function()? onPressed;
  final bool isOutline;
  final EdgeInsetsGeometry padding;
  final Color? color;
  final double height;
  final double radius;
  final double fontSize;

  const MyButton({
    required this.labelText,
    required this.onPressed,
    this.isOutline = false,
    this.padding = const EdgeInsets.fromLTRB(16, 16, 16, 14),
    this.color = AppColors.primaryColor,
    this.height = 36,
    this.radius = 24,
    this.fontSize = AppFontSize.body,
    super.key,
  });

  @override
  State<MyButton> createState() => _MyButtonState();
}

class _MyButtonState extends State<MyButton> {
  late Color buttonColor;

  @override
  void initState() {
    super.initState();
    _initButton();
  }

  void _initButton() {
    setState(() {
      buttonColor = widget.color!;
    });
  }

  bool isHovered = false;
  void _onHover(bool isHover) {
    isHovered = !isHovered;
    if (isHovered) {
      setState(() {
        buttonColor = buttonColor.withOpacity(0.5);
      });
    } else {
      setState(() {
        buttonColor = widget.color ?? AppColors.primaryColor;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    ButtonStyle buttonStyle = TextButton.styleFrom(
      backgroundColor: buttonColor,
      padding: widget.padding,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(widget.radius),
        ),
      ),
    );
    if (widget.isOutline) {
      buttonStyle = OutlinedButton.styleFrom(
        foregroundColor: buttonColor,
        padding: widget.padding,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(widget.radius),
          ),
        ),
        side: BorderSide(color: widget.color ?? AppColors.primaryColor),
      );
    }

    return SizedBox(
      height: widget.height,
      child: TextButton(
        onPressed: widget.onPressed,
        onHover: _onHover,
        style: buttonStyle,
        child: Center(
          child: Text(
            widget.labelText,
            style: TextStyle(
              color: widget.isOutline ? AppColors.baseBlack : Colors.white,
              fontWeight: AppFontWeight.semiBold,
              fontSize: widget.fontSize,
            ),
          ),
        ),
      ),
    );
  }
}
