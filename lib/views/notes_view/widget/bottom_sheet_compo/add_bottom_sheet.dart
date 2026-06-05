import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../core/reusable/re_text_field.dart';

class AddBottomSheet extends StatelessWidget {
  const AddBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 40),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: ReTextField(hintText: "Title", verticalPadding: 10,horizontalPadding: 15,),
        ),
        SizedBox(height: 20),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: ReTextField(hintText: "Content", horizontalPadding: 10,verticalPadding: 50,),
        ),
      ],
    );
  }
}
