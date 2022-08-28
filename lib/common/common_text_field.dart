import 'package:flutter/material.dart';
import '../constant/constant.dart';

class CommonTextField extends StatelessWidget {
  final TextEditingController? controller;
  final String? hintText;
  final void Function(String)? onChanged;
  final String? errorText;
  final String? labelText;
  final Icon? prefixIcon;

  const CommonTextField(
      {Key? key,
      required this.controller,
      this.hintText,
      this.onChanged,
      this.errorText,
      this.labelText,
      this.prefixIcon,})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      style: const TextStyle(
        fontSize: 24,
        color: Colors.blue,
      ),
      onChanged: onChanged,
      cursorColor: ColorConfig.colorGrey,
      decoration: InputDecoration(
        filled: true,
        isDense: true,
        focusColor: Colors.white,
        prefixIcon: prefixIcon,
        errorText: errorText,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(width: 1.0),
          borderRadius: BorderRadius.circular(10.0),
        ),
        fillColor: Colors.grey[300],
        hintText: hintText,
        hintStyle: CustomTextStyle.textFieldHintStyle,
        // labelText: labelText,
      ),
    );
  }
}
