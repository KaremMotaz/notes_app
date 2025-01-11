import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/notes_cubit/get_notes_cubit.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/views/widgets/custom_note_item.dart';

class NotesListView extends StatelessWidget {
  const NotesListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GetNotesCubit, GetNotesState>(
      builder: (context, state) {
        List<NoteModel> notesModelList =
            BlocProvider.of<GetNotesCubit>(context).notes ?? [];
        List<NoteModel> reversedNotesModelList = notesModelList.reversed.toList();

        return Expanded(
          child: ListView.builder(
            itemCount: reversedNotesModelList.length,
            itemBuilder: (context, index) {
              return CustomNoteItem(
                noteModel: reversedNotesModelList[index],
              );
            },
          ),
        );
      },
    );
  }
}
