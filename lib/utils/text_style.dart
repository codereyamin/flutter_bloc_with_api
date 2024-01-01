import 'package:flutter/material.dart';
import 'package:flutter_bloc_with_api/utils/colors.dart';

class AppTextStyle {
  AppTextStyle._();
  //////// primary text style
  static const TextStyle primaryTextStyle = TextStyle(
    fontWeight: FontWeight.w400,
    fontSize: 11,
    color: AppColor.primaryBlackColor,
  );

//////////// secondary text style
  static const TextStyle secondaryTextStyle = TextStyle(
    color: AppColor.primaryGrayColor,
    fontSize: 12,
    fontWeight: FontWeight.w500,
  );
  //////////// secondary two text style
  static const TextStyle secondaryTwoTextStyle = TextStyle(
    color: AppColor.primaryGrayColor,
    fontSize: 8,
    fontWeight: FontWeight.w400,
  );
}
