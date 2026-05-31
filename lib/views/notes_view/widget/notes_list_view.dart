import 'package:flutter/cupertino.dart';
import 'package:note_app/views/notes_view/widget/notes_view_items.dart';

class NotesListView extends StatelessWidget {
  const NotesListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(padding: EdgeInsetsDirectional.only(bottom: 25),
        itemCount: 7,
        itemBuilder: (context, index) {
          return Padding(
            padding:  EdgeInsets.symmetric(vertical: 4.0),
            child: NotesViewItems(),
          );
        },
      ),
    );
  }
}
