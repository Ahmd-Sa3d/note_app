import 'package:flutter/material.dart';
import 'package:note_app/core/utils/colors.dart';
import 'package:note_app/views/notes_view/widget/bottom_sheet_compo/modal_bottom_sheet.dart';
import 'package:note_app/views/notes_view/widget/app_bar_component/Notes_View_app_bar.dart';
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
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            children: [
              NotesViewAppBar(),
              SizedBox(height: 30),
              NotesListView(),
            ],
          ),
        ),
      ),
    );
  }
}
