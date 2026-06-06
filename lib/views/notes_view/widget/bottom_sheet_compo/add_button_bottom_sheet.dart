import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:note_app/core/utils/colors.dart';

class AddButtonBottomSheet extends StatelessWidget {
  const AddButtonBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      child: Container(
        alignment: Alignment.center,
        width: 100.sw,
        height: 30.h,
        decoration: BoxDecoration(
          color: AppColors.teal,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Text(
          'Add',
          style: TextStyle(color: AppColors.black, fontSize: 20.sp),
        ),
      ),
    );
  }
}
