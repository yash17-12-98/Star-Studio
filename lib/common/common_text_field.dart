import 'package:flutter/material.dart';
import '../constant/constant.dart';

class CommonTextField extends StatelessWidget {
  final TextEditingController? controller;
  final String? hintText;
  final void Function(String)? onChanged;
  final String? errorText;
  final String? labelText;
  final Widget? prefixIcon;
  final TextInputType? textInputType;
  final bool? isBorder;

    const CommonTextField({
    Key? key,
    this.controller,
    this.hintText,
    this.onChanged,
    this.errorText,
    this.labelText,
    this.prefixIcon,
    this.textInputType = TextInputType.none,
    this.isBorder = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      style: CustomTextStyle.textFieldTextStyle,
      onChanged: onChanged,
      keyboardType: textInputType,
      cursorColor: ColorConfig.colorGrey,
      autocorrect: false,
      enableSuggestions: false,
      decoration: InputDecoration(
        filled: true,
        isDense: true,
        focusColor: Colors.white,
        prefixIcon: prefixIcon,
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
            borderSide: isBorder == false
                ? BorderSide.none
                : const BorderSide(color: ColorConfig.colorDarkViolet)),
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
            borderSide: isBorder == false
                ? BorderSide.none
                : const BorderSide(color: ColorConfig.colorDarkViolet)),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
            borderSide: isBorder == false
                ? BorderSide.none
                : const BorderSide(color: ColorConfig.colorDarkViolet)),
        fillColor: ColorConfig.colorWhite,
        hintText: hintText,
        hintStyle: CustomTextStyle.textFieldHintStyle,
        labelText: labelText,
        labelStyle: CustomTextStyle.textFieldHintStyle,
      ),
    );
  }
}
