import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:note_app/views/notes_view/widget/bottom_sheet_compo/add_button_bottom_sheet.dart';
import 'package:note_app/views/notes_view/widget/bottom_sheet_compo/bottom_sheet_text_field.dart';

class ModalBottomSheet extends StatefulWidget {
  const ModalBottomSheet({super.key});

  @override
  State<ModalBottomSheet> createState() => _ModalBottomSheetState();
}

class _ModalBottomSheetState extends State<ModalBottomSheet> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
   AutovalidateMode autoValidate = AutovalidateMode.onUserInteraction;
  String? title, subTitle;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Form(
        key: _formKey,
        autovalidateMode: autoValidate,
        child: Column(
          children: [
            BottomSheetTextField(title: title??'', subTitle: subTitle??''),
            SizedBox(height: 15.h),
            AddButtonBottomSheet(
              onTap: () {
                if (_formKey.currentState!.validate()) {
                  _formKey.currentState!.save();
                }else {autoValidate = AutovalidateMode.always;}
              },
            ),
            SizedBox(height: 15.h),
          ],
        ),
      ),
    );
  }
}
