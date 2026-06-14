

import 'package:flutter/material.dart';
import '../utils/colors.dart';

class ReTextField extends StatelessWidget {
  const ReTextField({
    super.key,
    required this.hintText,
    required this.verticalPadding,
    required this.horizontalPadding, this.onSaved,
  });

  final String hintText;
  final double verticalPadding;
  final double horizontalPadding;
  final String? Function(String?)? onSaved;


  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onSaved: onSaved ,
      validator: (value) {
        if (value?.isEmpty ?? true){
          return 'This field is required';
        }
        return null;
      },
      textAlign: TextAlign.left,
      textAlignVertical: TextAlignVertical.center,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.symmetric(
          vertical: verticalPadding,
          horizontal: horizontalPadding,
        ),
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
