import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:note_app/core/reusable/re_Notes_app_bar.dart';

class EditNoteView extends StatelessWidget {
  const EditNoteView({super.key});

  final String noteId = 'editNoteView';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.0.w),
          child: Column(
            children: [
              ReNotesAppBar(title: 'Edit Note', icon: Icons.check),
              SizedBox(height: 30.h),
              ReTextField(
                hintText: 'title',
                verticalPadding: 15.h,
                horizontalPadding: 20.w,
              ),

              SizedBox(height: 30.h),

              ReTextField(
                hintText: 'title',
                verticalPadding: 50.h,
                horizontalPadding: 20.w,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
