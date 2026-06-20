import 'package:flutter/material.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';
import 'package:note_app/core/utils/colors.dart';
import 'package:note_app/views/notes_view/widget/bottom_sheet_compo/modal_bottom_sheet.dart';
import 'package:note_app/core/reusable/re_notes_app_bar.dart';
import 'package:note_app/views/notes_view/widget/notes_list_view.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});
  final String noteId = 'NoteView';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: IconButton(
        onPressed: () {
          showModalBottomSheet(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadiusGeometry.circular(16),
            ),
            context: context,
            builder: (context) {
              return ModalBottomSheet();
            },
          );
        },
        icon: Icon(Icons.add, color: AppColors.black, size: 35),
        style: IconButton.styleFrom(backgroundColor: AppColors.teal),
      ),
      body: SafeArea(
        child: Padding(
          padding:  EdgeInsets.symmetric(horizontal: 16.0.w),
          child: Column(
            children: [
              ReNotesAppBar(title: 'Notes',icon:  Icons.search,),
              SizedBox(height: 30),
              NotesListView(),
            ],
          ),
        ),
      ),
    );
  }
}
