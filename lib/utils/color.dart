import 'package:flutter/material.dart';

class AppColor {
  AppColor._();

  static const Color primary = Color.fromRGBO(39, 85, 85, 1);
  static const Color white = Color.fromRGBO(255, 255, 255, 1);
  static const Color orange = Color.fromRGBO(246, 121, 20, 1);
  static const Color darkPrimary = Color.fromRGBO(30, 74, 73, 1);
  static const Color lightPrimary = Color.fromRGBO(44, 96, 96, 1);
  static const Color black = Colors.black;

  static const Map<int, Color> _color = {
    50: Color.fromRGBO(39, 85, 85, .1),
    100: Color.fromRGBO(39, 85, 85, .2),
    200: Color.fromRGBO(39, 85, 85, .3),
    300: Color.fromRGBO(39, 85, 85, .4),
    400: Color.fromRGBO(39, 85, 85, .5),
    500: Color.fromRGBO(39, 85, 85, .6),
    600: Color.fromRGBO(39, 85, 85, .7),
    700: Color.fromRGBO(39, 85, 85, .8),
    800: Color.fromRGBO(39, 85, 85, .9),
    900: Color.fromRGBO(39, 85, 85, 1),
  };

  static const MaterialColor primaryWatch = MaterialColor(0xFF880E4F, _color);
}
