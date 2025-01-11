import 'package:flutter/material.dart';
import 'package:notes_app/constants/constants.dart';

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
