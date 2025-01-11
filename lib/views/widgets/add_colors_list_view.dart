import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/constants/constants.dart';
import 'package:notes_app/cubits/add_note_cubit/add_note_cubit.dart';
import 'package:notes_app/functions/color_to_int.dart';
import 'package:notes_app/views/widgets/color_item.dart';

class AddColorsListView extends StatefulWidget {
  const AddColorsListView({super.key});

  @override
  State<AddColorsListView> createState() => _AddColorsListViewState();
}

class _AddColorsListViewState extends State<AddColorsListView> {
  int currentIndex = 0;
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
              BlocProvider.of<AddNoteCubit>(context).color =
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
