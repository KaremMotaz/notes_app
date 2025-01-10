import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:notes_app/views/edit_note_view.dart';

class CustomNoteItem extends StatelessWidget {
  const CustomNoteItem({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const EditNoteView(),
          ),
        );
      },
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 4),
        padding:
            const EdgeInsets.only(bottom: 24, top: 24, left: 24, right: 12),
        decoration: BoxDecoration(
          color: const Color(0xffffcd7a),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              contentPadding: EdgeInsets.zero,
              title: const Padding(
                padding: EdgeInsets.only(bottom: 16),
                child: Text(
                  "Flutter tips",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 26,
                  ),
                ),
              ),
              subtitle: Text(
                "Build your career with Karim Motaz",
                style: TextStyle(
                  color: Colors.black.withValues(alpha: 0.4),
                  fontSize: 16,
                ),
              ),
              trailing: Padding(
                padding: const EdgeInsets.only(bottom: 16),
                child: IconButton(
                  onPressed: () {},
                  iconSize: 24,
                  color: Colors.black,
                  icon: const Icon(
                    FontAwesomeIcons.trash,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 12, top: 8),
              child: Text(
                "may 23.2025",
                style: TextStyle(
                  color: Colors.black.withValues(alpha: 0.4),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
