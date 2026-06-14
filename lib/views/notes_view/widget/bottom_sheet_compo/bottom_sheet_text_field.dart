import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/reusable/re_text_field.dart';

// ignore: must_be_immutable
class BottomSheetTextField extends StatefulWidget {
   BottomSheetTextField({
    super.key,
    required this.title,
    required this.subTitle,
  });

   String title, subTitle;

  @override
  State<BottomSheetTextField> createState() => _BottomSheetTextFieldState();
}

class _BottomSheetTextFieldState extends State<BottomSheetTextField> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 40),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.0.w),
          child: ReTextField(

            onSaved: (value) {
             widget.title  = value??'';
             return null;
            },
            hintText: "Title",
            verticalPadding: 15.h,
            horizontalPadding: 15.w,
          ),
        ),
        SizedBox(height: 20.h),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.0.w),
          child: ReTextField(
            onSaved: (value) {
              widget.subTitle = value??'';
              return null;
            },
            hintText: "Content",
            horizontalPadding: 10.w,
            verticalPadding: 50.h,
          ),
        ),
      ],
    );
  }
}
