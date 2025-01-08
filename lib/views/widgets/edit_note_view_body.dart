import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/custom_appbar.dart';
import 'package:notes_app/views/widgets/custom_text_field.dart';

class EditNoteViewBody extends StatelessWidget {
  const EditNoteViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController titleController = TextEditingController();
    TextEditingController contentController = TextEditingController();
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          const CustomAppbar(
            customIcon: Icons.done,
            appbarTitle: 'Edit Note',
            iconsize: 25,
          ),
          const SizedBox(
            height: 12,
          ),
          CustomTextField(
            hintText: "Title",
            controller: titleController,
          ),
          CustomTextField(
            hintText: "Content",
            controller: contentController,
            maxLines: 6,
          ),
        ],
      ),
    );
  }
}
