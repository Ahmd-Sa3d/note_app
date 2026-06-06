import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/reusable/re_text_field.dart';

class BottomSheetTextField extends StatelessWidget {
  const BottomSheetTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      SizedBox(height: 40),
      Padding(
        padding:  EdgeInsets.symmetric(horizontal: 20.0.w),
        child: ReTextField(
          hintText: "Title",
          verticalPadding: 15.h,
          horizontalPadding: 15.w,
        ),
      ),
      SizedBox(height: 20.h),
      Padding(
        padding:  EdgeInsets.symmetric(horizontal: 20.0.w),
        child: ReTextField(
          hintText: "Content",
          horizontalPadding: 10.w,
          verticalPadding: 50.h,
        ),
      ),
    ],);
  }
}
