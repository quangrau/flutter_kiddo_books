import 'package:audiobook/src/utils/app_dimensions.dart';
import 'package:flutter/material.dart';

class AppIcon extends StatelessWidget {
  final IconData icon;
  final Color bgColor;
  final Color iconColor;
  final double size;

  const AppIcon({
    Key? key,
    required this.icon,
    this.bgColor = const Color(0xFFeeedf2),
    this.iconColor = const Color(0xFF4F3C75),
    this.size = 40,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(size / 2),
        color: bgColor,
      ),
      child: Icon(
        icon,
        color: iconColor,
        size: AppDimensions.getHeight(16),
      ),
    );
  }
}
