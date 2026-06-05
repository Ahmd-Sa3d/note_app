import 'dart:ffi';

import 'dart:ffi';

import 'package:flutter/material.dart';
import '../utils/colors.dart';

class ReTextField extends StatelessWidget {
  const ReTextField({
    super.key,
    required this.hintText,
    required this.verticalPadding,
    required this.horizontalPadding,
  });

  final String hintText;
  final double verticalPadding;
  final double horizontalPadding;

  @override
  Widget build(BuildContext context) {
    return TextField(
      textAlign: TextAlign.left,
      textAlignVertical: TextAlignVertical.center,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.symmetric(vertical:verticalPadding , horizontal: horizontalPadding),
        alignLabelWithHint: true,
        hintText: hintText,
        hintStyle: TextStyle(color: AppColors.teal, fontSize: 20),
        enabledBorder: buildBorder(),
        focusedBorder: buildBorder(),
      ),
    );
  }
}

OutlineInputBorder buildBorder([Color? color]) {
  return OutlineInputBorder(
    borderSide: BorderSide(color: color ?? AppColors.white),
    borderRadius: BorderRadius.circular(12),
  );
}
