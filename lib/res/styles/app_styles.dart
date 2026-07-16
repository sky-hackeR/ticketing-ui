import 'package:flutter/material.dart';

Color primary = const Color(0xFF687daf);
class AppStyles {
  static Color primaryColor = primary;
  static Color textColor = const Color(0xFF3b3b3b);
  static Color bgColor = Colors.white70;
  static Color ticketBlue = const Color(0xFF1E293B);
  // 0xFFFE5F55


  static TextStyle textStyle = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w500,
  );

  static TextStyle headLineStyle1 = TextStyle(
        fontSize: 26,
        fontWeight: FontWeight.bold,
        color: textColor
  );

  static TextStyle headLineStyle2 = TextStyle(
    fontSize: 21,
    fontWeight: FontWeight.bold,
    color: textColor,
  );

  static TextStyle headLineStyle3 = const TextStyle(
      fontSize: 17,
      fontWeight: FontWeight.w500,
  );
}