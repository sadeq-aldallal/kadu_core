import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:kadu_core/constants/theme.constant.dart';

class GlobalTextField extends StatelessWidget {
  final dynamic controller;
  final dynamic action;
  final TextInputType type;
  final String label;
  final bool obscureText;
  final String? Function(String?)? validator;
  final AutovalidateMode? autovalidateMode;
  final Widget? error;

  GlobalTextField({
    this.controller,
    required this.label,
    this.obscureText = false,
    this.action = TextInputAction.next,
    this.type = TextInputType.text,
    this.validator,
    this.autovalidateMode = null,
    this.error,
  });
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autofocus: true,
      textInputAction: action,
      keyboardType: type,
      obscureText: obscureText,
      controller: controller,
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.symmetric(horizontal: 20),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide.none,
        ),
        hintText: label,
        hintTextDirection: TextDirection.rtl,
        hintStyle: TextStyle(fontSize: 16),
        fillColor: AppColors.BG_GRAY_THEME,
        filled: true,
        error: error,
      ),
      validator: validator,
      autovalidateMode: null,
    );
  }
}
