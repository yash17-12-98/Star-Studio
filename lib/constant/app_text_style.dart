import 'package:flutter/material.dart';

import 'constant.dart';

mixin AppTextStyle {
  static const nunitoRegular = 'Nunito Regular';
}

class CustomTextStyle {
  static TextStyle textFieldHintStyle = const TextStyle(
    color: ColorConfig.colorDarkViolet,
  );
  static TextStyle whiteTextStyle = const TextStyle(
    color: ColorConfig.colorWhite,
    fontSize: 15,
  );
  static TextStyle goldHeadingTextStyle = const TextStyle(
    color: ColorConfig.colorShineGold,
    letterSpacing: 10,
    fontWeight: FontWeight.bold,
    fontSize: 40,
  );
  static TextStyle goldSubTitleTextStyle = const TextStyle(
    color: ColorConfig.colorShineGold,
    fontWeight: FontWeight.normal,
    fontSize: 18,
  );
  static TextStyle goldSubTitleUnderlineTextStyle = const TextStyle(
    color: ColorConfig.colorShineGold,
    fontWeight: FontWeight.normal,
    decoration: TextDecoration.underline,
    fontSize: 18,
  );
  static TextStyle textFieldTextStyle = const TextStyle(
    color: ColorConfig.colorTextViolet,
    fontWeight: FontWeight.normal,
    // fontSize: 20,
  );
  static TextStyle violetHeadingTextStyle = const TextStyle(
      fontFamily: AppTextStyle.nunitoRegular,
      color: ColorConfig.colorDarkViolet,
      fontWeight: FontWeight.bold,
      fontSize: 30);
  static TextStyle violetBoldNameTextStyle = const TextStyle(
      fontFamily: AppTextStyle.nunitoRegular,
      color: ColorConfig.colorDarkViolet,
      fontWeight: FontWeight.w700,
      fontSize: 30);
  static TextStyle violetLightSubNameTextStyle = const TextStyle(
      fontFamily: AppTextStyle.nunitoRegular,
      color: ColorConfig.colorDarkViolet,
      fontWeight: FontWeight.normal,
      fontSize: 20);
  static TextStyle violetLightSmallNameTextStyle = const TextStyle(
      fontFamily: AppTextStyle.nunitoRegular,
      color: ColorConfig.colorDarkViolet,
      fontWeight: FontWeight.normal,
      fontSize: 15);
  static TextStyle violetMediumSubNameTextStyle = const TextStyle(
      fontFamily: AppTextStyle.nunitoRegular,
      color: ColorConfig.colorDarkViolet,
      fontWeight: FontWeight.w600,
      fontSize: 25);
}
