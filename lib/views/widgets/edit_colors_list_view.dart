import 'package:flutter/material.dart';
import 'package:notes_app/constants/constants.dart';
import 'package:notes_app/functions/color_to_int.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/views/widgets/color_item.dart';

class EditColorsListView extends StatefulWidget {
  const EditColorsListView({
    super.key,
    required this.noteModel,
  });
  final NoteModel noteModel;

  @override
  State<EditColorsListView> createState() => _EditColorsListViewState();
}

class _EditColorsListViewState extends State<EditColorsListView> {
  late int currentIndex;
  @override
  void initState() {
    currentIndex = kColorsList.indexOf(Color(widget.noteModel.color));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: radiusOfColorItem * 2,
      child: ListView.builder(
        itemCount: kColorsList.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              currentIndex = index;
              widget.noteModel.color =
                  AppColorUtils.colorToInt(kColorsList[index]);
              setState(() {});
            },
            child: ColorItem(
              isActive: currentIndex == index,
              color: kColorsList[index],
            ),
          );
        },
      ),
    );
  }
}
