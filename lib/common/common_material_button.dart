import 'package:flutter/material.dart';
import '../constant/constant.dart';

class CommonMaterialButton extends StatelessWidget {
  final Color? color;
  final String? text;
  final Function()? onPressed;

  const CommonMaterialButton({Key? key, this.color, this.text, this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      color: color,
      onPressed: onPressed,
      child: Text(
        text.toString(),
        style: CustomTextStyle.whiteTextStyle,
      ),
    );
  }
}
