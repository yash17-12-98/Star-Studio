import 'package:flutter/material.dart';
import 'package:get/get.dart';
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
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 20.0),
              child: Column(
      children: [
        CommonTextField(
          controller: controller.firstNameController,
          hintText: "First Name",
          prefixIcon: const Icon(
              Icons.person_outline_rounded,
              color: Colors.grey,
          ),
        ),
        const SizedBox(
          height: 10.0,
        ),
        CommonTextField(
          controller: controller.lastNameController,
          hintText: "Last Name",
          prefixIcon: const Icon(
              Icons.password_outlined,
              color: Colors.grey,
          ),
        ),
        const SizedBox(
          height: 10.0,
        ),
        CommonTextField(
          controller: controller.emailController,
          hintText: "Email",
          prefixIcon: const Icon(
              Icons.password_outlined,
              color: Colors.grey,
          ),
        ),
        const SizedBox(
          height: 10.0,
        ),
        CommonTextField(
          controller: controller.emailController,
          hintText: "Birth Date",
          prefixIcon: const Icon(
              Icons.password_outlined,
              color: Colors.grey,
          ),
        ),
        const SizedBox(
          height: 10.0,
        ),
        CommonTextField(
          controller: controller.emailController,
          hintText: "Create Password",
          prefixIcon: const Icon(
              Icons.password_outlined,
              color: Colors.grey,
          ),
        ),
        const SizedBox(
          height: 10.0,
        ),
        CommonTextField(
          controller: controller.emailController,
          hintText: "Confirm Password",
          prefixIcon: const Icon(
              Icons.password_outlined,
              color: Colors.grey,
          ),
        ),
        CommonMaterialButton(
          color: ColorConfig.colorViolet,
          text: 'Sign Up',
          onPressed: () {
              Get.toNamed(SignUpScreen.pageId);
          },
        )
      ],
    ),
            )));
  }
}
