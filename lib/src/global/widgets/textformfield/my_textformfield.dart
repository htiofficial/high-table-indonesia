import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hti_indonesia/src/config/colors/colors.dart';

class MyTextFormField extends StatefulWidget {
  final TextEditingController controller;
  final String labelText;
  final dynamic onTap;
  final dynamic onChanged;
  final dynamic onFieldSubmitted;
  final String? hintText;
  final bool? obscureText;
  final int? maxLength;
  final TextInputType? keyboardType;
  final IconData? icon;
  final Widget? suffixIcon;
  final FloatingLabelBehavior? floatingLabelBehavior;
  final int? maxLines;
  final int? minLines;
  final bool? readOnly;
  final Color? iconColor;
  final bool? enableInteractiveSelection;
  final List<TextInputFormatter>? inputFormatters;
  final TextInputAction? textInputAction;

  const MyTextFormField(
      {required this.controller,
      required this.labelText,
      this.onTap,
      this.onFieldSubmitted,
      this.hintText,
      this.maxLength,
      this.minLines,
      this.maxLines,
      this.keyboardType,
      this.obscureText,
      this.floatingLabelBehavior,
      this.icon,
      this.suffixIcon,
      this.onChanged,
      this.readOnly,
      this.iconColor,
      this.enableInteractiveSelection,
      this.inputFormatters,
      this.textInputAction,
      super.key});

  @override
  State<MyTextFormField> createState() => _MyTextFormFieldState();
}

class _MyTextFormFieldState extends State<MyTextFormField> {
  Color prefixIconColor = AppColors.neutralColor;
  Color enabledBorderColor = AppColors.neutralColor;
  Color focusedBorderColor = AppColors.neutralColor;
  Color labelTextColor = AppColors.neutralColor;

  late FocusNode focusNode;

  @override
  void initState() {
    super.initState();
    focusNode = FocusNode();
    focusNode.addListener(() {
      setState(() {
        if (focusNode.hasFocus) {
          enabledBorderColor = AppColors.primaryColor;
          focusedBorderColor = AppColors.primaryColor;
          prefixIconColor = AppColors.primaryColor;
          labelTextColor = AppColors.primaryColor;
        } else {
          if (widget.controller.text.isNotEmpty) {
            enabledBorderColor = AppColors.baseBlack;
            focusedBorderColor = AppColors.baseBlack;
            prefixIconColor = AppColors.primaryColor;
            labelTextColor = AppColors.baseBlack;
          } else {
            enabledBorderColor = AppColors.neutralColor;
            focusedBorderColor = AppColors.primaryColor;
            prefixIconColor = AppColors.neutralColor;
            labelTextColor = AppColors.neutralColor;
          }
        }
      });
    });
  }

  @override
  void dispose() {
    focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (focusNode.hasFocus) {
      enabledBorderColor = AppColors.primaryColor;
      focusedBorderColor = AppColors.primaryColor;
      prefixIconColor = AppColors.primaryColor;
      labelTextColor = AppColors.primaryColor;
    }
    if (widget.controller.text.isEmpty && !focusNode.hasFocus) {
      enabledBorderColor = AppColors.neutralColor;
      prefixIconColor = AppColors.neutralColor;
      labelTextColor = AppColors.neutralColor;
    }
    if (widget.controller.text.isNotEmpty && !focusNode.hasFocus) {
      enabledBorderColor = AppColors.baseBlack;
      prefixIconColor = AppColors.primaryColor;
      labelTextColor = AppColors.baseBlack;
    }

    if (widget.readOnly == true) {
      enabledBorderColor = focusedBorderColor = Colors.transparent;
    }

    return TextFormField(
      minLines: widget.minLines,
      maxLines: widget.maxLines ?? 1,
      textInputAction: widget.textInputAction,
      focusNode: focusNode,
      onFieldSubmitted: widget.onFieldSubmitted,
      onTap: widget.onTap,
      onChanged: (text) {
        setState(() {
          prefixIconColor =
              text.isNotEmpty ? AppColors.primaryColor : AppColors.neutralColor;
          if (focusNode.hasFocus) {
            enabledBorderColor = AppColors.primaryColor;
            focusedBorderColor = AppColors.primaryColor;
            labelTextColor = AppColors.primaryColor;
            prefixIconColor = AppColors.primaryColor;
          }
          if (widget.readOnly == true) {
            enabledBorderColor = focusedBorderColor = Colors.transparent;
          }
        });
        if (widget.onChanged != null) {
          widget.onChanged(text);
        }
      },
      controller: widget.controller,
      obscureText: widget.obscureText ?? false,
      readOnly: widget.readOnly ?? false,
      enableInteractiveSelection: widget.enableInteractiveSelection ?? true,
      inputFormatters: widget.inputFormatters,
      maxLength: widget.maxLength,
      keyboardType: widget.keyboardType,
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.fromLTRB(16, 16, 0, 16),
        labelText: widget.labelText,
        labelStyle: TextStyle(color: labelTextColor),
        hintText: widget.hintText,
        hintStyle: const TextStyle(color: AppColors.neutralColor),
        floatingLabelBehavior: widget.floatingLabelBehavior,
        prefixIcon: widget.icon != null
            ? Icon(widget.icon, color: prefixIconColor)
            : null,
        suffixIcon: widget.suffixIcon,
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: enabledBorderColor,
          ),
          borderRadius: const BorderRadius.all(
            Radius.circular(8),
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: focusedBorderColor,
          ),
          borderRadius: const BorderRadius.all(
            Radius.circular(8),
          ),
        ),
      ),
    );
  }
}
