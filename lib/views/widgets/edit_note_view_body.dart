import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/notes_cubit/get_notes_cubit.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/views/widgets/custom_appbar.dart';
import 'package:notes_app/views/widgets/custom_text_field.dart';
import 'package:notes_app/views/widgets/edit_colors_list_view.dart';

class EditNoteViewBody extends StatefulWidget {
  const EditNoteViewBody({super.key, required this.noteModel});
  final NoteModel noteModel;

  @override
  State<EditNoteViewBody> createState() => _EditNoteViewBodyState();
}

class _EditNoteViewBodyState extends State<EditNoteViewBody> {
  String? title, content;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          CustomAppbar(
            customIcon: Icons.done,
            appbarTitle: 'Edit Note',
            onTap: () {
              widget.noteModel.title = title ?? widget.noteModel.title;
              widget.noteModel.content = content ?? widget.noteModel.content;
              widget.noteModel.save();
              BlocProvider.of<GetNotesCubit>(context).getAllNotes();
              Navigator.pop(context);
            },
          ),
          const SizedBox(
            height: 12,
          ),
          CustomTextField(
            onChanged: (value) {
              title = value;
            },
            hintText: widget.noteModel.title,
            controller: TextEditingController(text: widget.noteModel.title),
          ),
          CustomTextField(
            onChanged: (value) {
              content = value;
            },
            hintText: widget.noteModel.content,
            maxLines: 6,
            controller: TextEditingController(text: widget.noteModel.content),
          ),
          const SizedBox(
            height: 10,
          ),
          EditColorsListView(
            noteModel: widget.noteModel,
          ),
          const SizedBox(
            height: 14,
          ),
        ],
      ),
    );
  }
}
