import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:notes_app/constants/constants.dart';
import 'package:notes_app/cubits/add_note_cubit/add_note_cubit.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/views/widgets/custom_button.dart';
import 'package:notes_app/views/widgets/custom_text_field.dart';

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({super.key});
  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

final GlobalKey<FormState> formKey = GlobalKey();
AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
String? title, content;
String formattedDate = DateFormat('MMMM d,y').format(DateTime.now());

class _AddNoteFormState extends State<AddNoteForm> {
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      autovalidateMode: autovalidateMode,
      child: Column(
        children: [
          CustomTextField(
            hintText: "Title",
            onSaved: (value) {
              title = value;
            },
          ),
          CustomTextField(
            hintText: "Content",
            onSaved: (value) {
              content = value;
            },
            maxLines: 6,
          ),
          const SizedBox(
            height: 10,
          ),
          const ColorsListView(),
          const SizedBox(
            height: 14,
          ),
          BlocBuilder<AddNoteCubit, AddNoteState>(
            builder: (context, state) {
              int currentColor = BlocProvider.of<AddNoteCubit>(context).color;
              return CustomButton(
                isLoading: state is AddNoteLoadingState ? true : false,
                text: "Add",
                onTap: () {
                  if (formKey.currentState!.validate()) {
                    formKey.currentState!.save();
                    var noteModel = NoteModel(
                      title: title!,
                      content: content!,
                      date: formattedDate,
                      color: currentColor,
                    );
                    BlocProvider.of<AddNoteCubit>(context).addNote(noteModel);
                  } else {
                    autovalidateMode = AutovalidateMode.always;
                    setState(() {});
                  }
                },
              );
            },
          ),
        ],
      ),
    );
  }
}

class ColorItem extends StatelessWidget {
  const ColorItem({
    super.key,
    required this.isActive,
    required this.color,
  });
  final bool isActive;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return isActive
        ? Padding(
            padding: const EdgeInsets.only(right: 10),
            child: CircleAvatar(
              radius: radiusOfColorItem,
              backgroundColor: Colors.white,
              child: CircleAvatar(
                radius: radiusOfColorItem - 2,
                backgroundColor: color,
              ),
            ),
          )
        : Padding(
            padding: const EdgeInsets.only(right: 10),
            child: CircleAvatar(
              radius: radiusOfColorItem,
              backgroundColor: color,
            ),
          );
  }
}

class ColorsListView extends StatefulWidget {
  const ColorsListView({super.key});

  @override
  State<ColorsListView> createState() => _ColorsListViewState();
}

class _ColorsListViewState extends State<ColorsListView> {
  int currentIndex = 0;
  List<Color> colorsList = [
    const Color(0xff826AED),
    const Color(0xffC879FF),
    const Color(0xffFFB7FF),
    const Color(0xff3BF4FB),
    const Color(0xffCAFF8A),
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: radiusOfColorItem * 2,
      child: ListView.builder(
        itemCount: colorsList.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              currentIndex = index;
              BlocProvider.of<AddNoteCubit>(context).color = colorsList[index].value ;
              setState(() {});
            },
            child: ColorItem(
              isActive: currentIndex == index,
              color: colorsList[index],
            ),
          );
        },
      ),
    );
  }
}
