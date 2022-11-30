import 'package:flutter/material.dart';

import '../constants/theme.dart';

class Styles {
  static TextStyle textMenu = const TextStyle(
      color: Colors.black, fontWeight: FontWeight.bold, fontSize: 15);

  static TextStyle titleAppbar = const TextStyle(
      color: Colors.black, fontWeight: FontWeight.w600, fontSize: 20);

  static TextStyle postContentStyled = const TextStyle(
    color: Color(0xFF75818F),
    fontSize: 11,
    fontWeight: FontWeight.w400,
  );

  static TextStyle notiTitle = const TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w400,
  );

  static TextStyle blogTitle = const TextStyle(
    color: Colors.black,
    fontWeight: FontWeight.w400,
    fontSize: 24,
  );

  static TextStyle titleDiaglog = const TextStyle(
      fontWeight: FontWeight.w500,
      fontSize: 18,
      color: Color(0xff5365FD));


  //Q&A
  static TextStyle styleTextButton = const TextStyle(
    color: Color(0xff150B3D),
    fontWeight: FontWeight.w700,
    fontSize: 13,
  );

  static InputDecoration missionInputDeco = InputDecoration(
    contentPadding: const EdgeInsets.symmetric(
      vertical: 8,
      horizontal: 10,
    ),
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(5),
      borderSide: const BorderSide(
        color: kMainColor,
        width: 1.4,
      ),
    ),
  );

  static const primaryButtonTextStyle = TextStyle(
    color: Colors.white,
    fontWeight: FontWeight.w600,
    fontSize: 13,
  );

}
