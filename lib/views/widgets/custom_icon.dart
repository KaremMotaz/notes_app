import 'package:flutter/material.dart';

class CustomIcon extends StatelessWidget {
  const CustomIcon(
      {super.key, required this.customIcon, required this.iconsize});
  final IconData customIcon;
  final double iconsize;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.05),
        borderRadius: const BorderRadius.all(
          Radius.circular(8),
        ),
      ),
      child: GestureDetector(
        onTap: () {},
        child: Icon(
          customIcon,
          size: iconsize,
        ),
      ),
    );
  }
}
