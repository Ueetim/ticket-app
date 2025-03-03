// import 'dart:ui';
import 'package:flutter/material.dart';

Color primary = const Color(0xFF687daf);
class AppStyles {
  static Color primaryColor = primary;
  static Color textColor = const Color(0xFF3b3b3b);
  static Color bgColor = const Color(0xFFeeedf2);
  static Color ticketBlue = const Color(0xFF526799);
  static Color ticketOrange = const Color(0xFFF37B67);
  static Color khakiColor = const Color(0xFFd2bdb6);
  static Color planeColor = const Color(0xFFBFC2DF);
  static Color findTicketsBtn = const Color(0xD91130CE);
  static Color circleColor = const Color(0xFF189999);

  static TextStyle textStyle = TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w500,
      color: textColor
  );

  static TextStyle headlineStyle1 = TextStyle(
      fontSize: 26,
      fontWeight: FontWeight.bold,
      color: textColor
  );

  static TextStyle headlineStyle2 = TextStyle(
      fontSize: 21,
      fontWeight: FontWeight.bold,
      color: textColor
  );

  static TextStyle headlineStyle3 = const TextStyle(
      fontSize: 17,
      fontWeight: FontWeight.w600
  );

  static TextStyle headlineStyle4 = const TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w600
  );
}