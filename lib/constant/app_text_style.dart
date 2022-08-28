import 'package:flutter/material.dart';

import 'constant.dart';

mixin AppTextStyle {
  static const nunitoRegular = 'Nunito Regular';
}

class CustomTextStyle {
  static TextStyle textFieldHintStyle = const TextStyle(
    fontFamily: AppTextStyle.nunitoRegular,
    color: ColorConfig.colorGrey,
    fontSize: 15,
  );
  static TextStyle whiteTextStyle = const TextStyle(
    fontFamily: AppTextStyle.nunitoRegular,
    color: ColorConfig.colorWhite,
    fontSize: 15,
  );
}
