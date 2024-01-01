import 'package:flutter/material.dart';

class AppTextStyle {
  AppTextStyle._();
  //////// primary text style
  static const TextStyle primaryTextStyle = TextStyle(
    fontWeight: FontWeight.w400,
    fontSize: 11,
    color: Colors.grey,
  );

//////////// secondary text style
  static const TextStyle secondaryTextStyle = TextStyle(
    color: Color(0xff718096),
    fontSize: 12,
    fontWeight: FontWeight.w500,
  );
  static const TextStyle secondaryTwoTextStyle = TextStyle(
    color: Color(0xff718096),
    fontSize: 12,
    fontWeight: FontWeight.w400,
  );
}
