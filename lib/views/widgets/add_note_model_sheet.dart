import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/custom_button.dart';
import 'package:notes_app/views/widgets/custom_text_field.dart';

class AddNoteModelSheet extends StatelessWidget {
  const AddNoteModelSheet({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController titleController = TextEditingController();
    TextEditingController contentController = TextEditingController();
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 25),
      child: SingleChildScrollView(
        child: Column(
          children: [
            CustomTextField(
              hintText: "Title",
              controller: titleController,
            ),
            CustomTextField(
              hintText: "Content",
              controller: contentController,
              maxLines: 6,
            ),
            const SizedBox(
              height: 30,
            ),
            CustomButton(text: "Add", onTap: () {})
          ],
        ),
      ),
    );
  }
}
