import 'package:flutter/material.dart';
import 'package:note_app/views/notes_view/widget/app_bar_component/Notes_View_app_bar.dart';
import 'package:note_app/views/notes_view/widget/notes_list_view.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: SafeArea(child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        children: [
          NotesViewAppBar(),
          SizedBox(height: 30,),
          NotesListView(),
        ],
      ),
    )));
  }
}
