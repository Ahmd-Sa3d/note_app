import 'package:flutter/material.dart';
import 'package:note_app/core/utils/fonts.dart';
import 'package:note_app/views/notes_view/widget/app_bar_component/app_bar_search_button.dart';

class ReNotesAppBar extends StatelessWidget {
  const ReNotesAppBar({super.key, required this.title, required this.icon});

  final String title;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(title, style: AppFonts.poppins(fontSize: 25)),
        AppBarSearchButton(icon: icon),
      ],
    );
  }
}
