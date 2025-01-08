import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/custom_icon.dart';

class CustomAppbar extends StatelessWidget {
  const CustomAppbar({
    super.key,
    required this.customIcon,
    required this.appbarTitle,
    required this.iconsize,
  });
  final IconData customIcon;
  final String appbarTitle;
  final double iconsize;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          appbarTitle,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 28,
          ),
        ),
        CustomIcon(
          customIcon: customIcon,
          iconsize: iconsize,
        )
      ],
    );
  }
}
