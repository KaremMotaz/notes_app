import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/custom_appbar.dart';
import 'package:notes_app/views/widgets/notes_list_view.dart';

class NotesViewBody extends StatelessWidget {
  const NotesViewBody({super.key});
  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(16),
      child: Column(
        children: [
          CustomAppbar(
            customIcon: Icons.search, appbarTitle: 'Notes', iconsize: 28,
          ),
          SizedBox(
            height: 12,
          ),
          NotesListView(),
        ],
      ),
    );
  }
}
