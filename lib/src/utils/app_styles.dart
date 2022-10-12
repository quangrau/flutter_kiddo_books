import 'package:flutter/material.dart';

/// Color palettes
Color burntSienna = const Color(0xFFF16F54);
Color rajah = const Color(0xFFF4B45D);
Color deepChampagne = const Color(0xFFF5D6AC);
Color cadetBlue = const Color(0xFFB7B0C7);
Color cyberGrape = const Color(0xFF4F3C75);
Color jacarta = const Color(0XFF372A53);

/// App styles
class AppStyles {
  static Color primaryColor = burntSienna;
  static Color secondaryColor = rajah;
  static Color bgColor = const Color(0xFFeeedf2);
  static Color iconColor = cadetBlue;
  static Color textColor = jacarta;

  static TextStyle textStyle = TextStyle(fontSize: 14, color: textColor, fontWeight: FontWeight.w500);
  static TextStyle headLineStyleLarge = TextStyle(fontSize: 22, color: textColor, fontWeight: FontWeight.bold);
  static TextStyle headLineStyleMedium = TextStyle(fontSize: 16, color: textColor, fontWeight: FontWeight.bold);
  static TextStyle headLineStyleSmall = TextStyle(fontSize: 14, color: textColor, fontWeight: FontWeight.bold);
}
