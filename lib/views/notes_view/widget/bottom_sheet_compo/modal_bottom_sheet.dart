import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:note_app/views/notes_view/widget/bottom_sheet_compo/bottom_sheet_text_field.dart';


class ModalBottomSheet extends StatelessWidget {
  const ModalBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
       BottomSheetTextField(),

      ],
    );
  }
}
