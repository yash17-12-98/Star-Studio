import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:star_studio/constant/color_config.dart';
import 'package:star_studio/constant/image_path.dart';
import 'package:star_studio/controllers/controllers.dart';
import '../common/common.dart';
import '../constant/constant.dart';

class SignUpScreen extends GetView<SignUpController> {
  static const pageId = '/SignUp';

  const SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          IconButton(
            padding: EdgeInsets.zero,
            iconSize: 50.0,
            color: ColorConfig.colorDarkViolet,
            icon: const Icon(Icons.keyboard_arrow_left),
            onPressed: () {
              Get.back();
            },
          ),
          Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
            child: Column(
              children: [
                Row(
                  children: [
                    Text(
                      'Hello!\nSignup to\nget started',
                      style: CustomTextStyle.violetHeadingTextStyle,
                    ),
                    Expanded(child: Image.asset(ImagePath.hiGif)),
                  ],
                ),
                CommonTextField(
                  controller: controller.firstNameController,
                  labelText: "First Name",
                  isBorder: true,
                  textInputType: TextInputType.text,
                  prefixIcon: Image.asset(
                    ImagePath.userIcon,
                    scale: 23,
                    color: ColorConfig.colorDarkViolet,
                  ),
                ),
                const SizedBox(
                  height: 10.0,
                ),
                CommonTextField(
                  controller: controller.lastNameController,
                  labelText: "Last Name",
                  isBorder: true,
                  textInputType: TextInputType.text,
                  prefixIcon: Image.asset(
                    ImagePath.userIcon,
                    scale: 23,
                    color: ColorConfig.colorDarkViolet,
                  ),
                ),
                const SizedBox(
                  height: 10.0,
                ),
                CommonTextField(
                  controller: controller.emailController,
                  labelText: "Email",
                  isBorder: true,
                  textInputType: TextInputType.emailAddress,
                  prefixIcon: Image.asset(
                    ImagePath.emailIcon,
                    scale: 23,
                    color: ColorConfig.colorDarkViolet,
                  ),
                ),
                const SizedBox(
                  height: 10.0,
                ),
                CommonTextField(
                  controller: controller.phoneController,
                  labelText: "Phone Number",
                  isBorder: true,
                  textInputType: TextInputType.number,
                  prefixIcon: Image.asset(
                    ImagePath.phoneIcon,
                    scale: 23,
                    color: ColorConfig.colorDarkViolet,
                  ),
                ),
                const SizedBox(
                  height: 10.0,
                ),
                CommonTextField(
                  controller: controller.pwdController,
                  labelText: "Create Password",
                  isBorder: true,
                  textInputType: TextInputType.visiblePassword,
                  prefixIcon: Image.asset(
                    ImagePath.pwdIcon,
                    scale: 23,
                    color: ColorConfig.colorDarkViolet,
                  ),
                ),
                const SizedBox(
                  height: 10.0,
                ),
                CommonTextField(
                  controller: controller.cnfPwdController,
                  labelText: "Confirm Password",
                  isBorder: true,
                  textInputType: TextInputType.visiblePassword,
                  prefixIcon: Image.asset(
                    ImagePath.pwdIcon,
                    scale: 23,
                    color: ColorConfig.colorDarkViolet,
                  ),
                ),
                const SizedBox(
                  height: 10.0,
                ),
                CommonMaterialButton(
                  color: ColorConfig.colorViolet,
                  text: 'Sign Up',
                  onPressed: () {
                    Get.back();
                  },
                )
              ],
            ),
          ),
        ],
      ),
    )));
  }
}
