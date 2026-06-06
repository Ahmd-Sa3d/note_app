import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:note_app/core/utils/colors.dart';
import 'package:note_app/core/utils/fonts.dart';
import 'package:note_app/views/edit_note_view.dart';

class NotesViewItems extends StatelessWidget {
  const NotesViewItems({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, EditNoteView().noteId);
      },
      child: Container(
        decoration: BoxDecoration(
          color: AppColors.lightOrange,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              ListTile(
                title: Text(
                  'first note',
                  style: AppFonts.poppins(fontSize: 20, color: AppColors.black),
                ),
                subtitle: Text(
                  'first note details',
                  style: AppFonts.poppins(
                    fontSize: 13,
                    color: AppColors.black.withAlpha(120),
                  ),
                ),
                trailing: IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.delete, color: AppColors.black),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 20.0),
                child: Text(
                  '30/12/2026',
                  style: AppFonts.poppins(
                    fontSize: 10,
                    color: AppColors.black.withAlpha(120),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
