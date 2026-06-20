import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:note_app/models/note_model.dart';
import 'package:note_app/services/cubits/add_notes_cubit.dart';
import 'package:note_app/services/simple_block_observer.dart';
import 'package:note_app/views/edit_note_view.dart';
import 'package:note_app/views/notes_view/notes_view.dart';

void main() async {
  Bloc.observer = SimpleBlockObserver();
  await Hive.initFlutter();
  await Hive.openBox('kHiveBox');
  Hive.registerAdapter(NoteModelAdapter());
  runApp(const NotesApp());
}

class NotesApp extends StatelessWidget {
  const NotesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilPlusInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) => MultiBlocProvider(
        providers: [BlocProvider(create: (context) => AddNotesCubit())],
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeData(brightness: Brightness.dark),
          initialRoute: NotesView().noteId,
          routes: {
            NotesView().noteId: (context) => const NotesView(),
            EditNoteView().noteId: (context) => const EditNoteView(),
          },
        ),
      ),
    );
  }
}
