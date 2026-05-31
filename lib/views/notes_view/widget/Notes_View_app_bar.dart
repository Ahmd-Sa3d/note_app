import 'package:flutter/cupertino.dart';
import 'package:note_app/core/utils/fonts.dart';
import 'package:note_app/views/notes_view/widget/app_bar_search_button.dart';

class NotesViewAppBar extends StatelessWidget {
  const NotesViewAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text("Notes", style: AppFonts.poppins(25)),
        AppBarSearchButton(),
      ],
    );
  }
}
