import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:note_app/views/edit_note_view.dart';
import 'package:note_app/views/notes_view/notes_view.dart';

void main()async {
  await Hive.initFlutter();
  await Hive.openBox('kHiveBox');
  Hive.registerAdapter(NoteModelAdapter());
  runApp(const NotesApp());
}

class NotesApp extends StatelessWidget {
  const NotesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) => MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(brightness: Brightness.dark),
        initialRoute: NotesView().noteId,
        routes: {
          NotesView().noteId: (context) => const NotesView(),
          EditNoteView().noteId : (context)=> const EditNoteView()
        },

      ),
    );
  }
}
