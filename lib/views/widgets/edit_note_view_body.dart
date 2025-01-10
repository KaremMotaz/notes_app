import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/custom_appbar.dart';
import 'package:notes_app/views/widgets/custom_text_field.dart';

class EditNoteViewBody extends StatelessWidget {
  const EditNoteViewBody({super.key});

  @override
  Widget build(BuildContext context) {

    return const Padding(
      padding: EdgeInsets.all(16),
      child: Column(
        children: [
          CustomAppbar(
            customIcon: Icons.done,
            appbarTitle: 'Edit Note',
            iconsize: 25,
          ),
          SizedBox(
            height: 12,
          ),
          CustomTextField(
            hintText: "Title",
          ),
          CustomTextField(
            hintText: "Content",
            maxLines: 6,
          ),
        ],
      ),
    );
  }
}
