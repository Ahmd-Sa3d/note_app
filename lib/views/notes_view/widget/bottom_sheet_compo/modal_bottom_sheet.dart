import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_progress_hud/flutter_progress_hud.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';
import 'package:note_app/services/cubits/add_notes_cubit.dart';
import 'package:note_app/views/notes_view/widget/bottom_sheet_compo/add_button_bottom_sheet.dart';
import 'package:note_app/views/notes_view/widget/bottom_sheet_compo/bottom_sheet_text_field.dart';

class ModalBottomSheet extends StatefulWidget {
  const ModalBottomSheet({super.key});

  @override
  State<ModalBottomSheet> createState() => _ModalBottomSheetState();
}

class _ModalBottomSheetState extends State<ModalBottomSheet> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  AutovalidateMode autoValidate = AutovalidateMode.onUserInteraction;
  String? title, subTitle;

  @override
  Widget build(BuildContext context) {
    return ProgressHUD(
      child: Builder(
        builder: (context) {
          return SingleChildScrollView(
            child: BlocConsumer<AddNotesCubit, AddNotesState>(
              listener: (BuildContext context, state) {
                final progress = ProgressHUD.of(context);

                if (state is AddNotesLoading) {
                  progress?.show();
                } else {
                  progress?.dismiss();
                }

                if (state is AddNotesFailure) {
                  print('failure ${state.errorMessage}');
                }

                if (state is AddNotesSuccess) {
                  Navigator.pop(context);
                }
              },
              builder: (BuildContext context, state) {
                return Form(
                  key: _formKey,
                  autovalidateMode: autoValidate,
                  child: Column(
                    children: [
                      BottomSheetTextField(
                        title: title ?? '',
                        subTitle: subTitle ?? '',
                      ),
                      SizedBox(height: 15.h),
                      AddButtonBottomSheet(
                        onTap: () {
                          if (_formKey.currentState!.validate()) {
                            _formKey.currentState!.save();
                          } else {
                            setState(() {
                              autoValidate = AutovalidateMode.always;
                            });
                          }
                        },
                      ),
                      SizedBox(height: 15.h),
                    ],
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }
}