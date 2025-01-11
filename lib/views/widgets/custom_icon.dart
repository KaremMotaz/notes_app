import 'package:flutter/material.dart';

class CustomIcon extends StatelessWidget {
  const CustomIcon({
    super.key,
    required this.customIcon,
    required this.onTap,
  });
  final IconData customIcon;
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: Colors.white.withValues(alpha: 0.1),
        borderRadius: const BorderRadius.all(
          Radius.circular(8),
        ),
      ),
      child: GestureDetector(
        onTap: onTap,
        child: Icon(
          customIcon,
          size: 25,
        ),
      ),
    );
  }
}
