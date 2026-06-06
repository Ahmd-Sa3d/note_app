import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:note_app/views/notes_view/widget/bottom_sheet_compo/add_button_bottom_sheet.dart';
import 'package:note_app/views/notes_view/widget/bottom_sheet_compo/bottom_sheet_text_field.dart';

class ModalBottomSheet extends StatelessWidget {
  const ModalBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        BottomSheetTextField(),
        Spacer(),
        AddButtonBottomSheet(),
        SizedBox(height: 15.h,)

      ],
    );
  }
}
