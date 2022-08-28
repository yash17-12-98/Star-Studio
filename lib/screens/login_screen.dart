import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:star_studio/constant/constant.dart';
import 'package:star_studio/screens/signup_screen.dart';
import '../common/common.dart';
import '../controllers/controllers.dart';

class LoginScreen extends GetView<LoginController> {
  static const pageId = '/login';

  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 20.0),
        child: Column(
          children: [
            CommonTextField(
              controller: controller.emailController,
              hintText: "Email",
              prefixIcon: const Icon(
                Icons.person_outline_rounded,
                color: Colors.grey,
              ),
            ),
            const SizedBox(
              height: 10.0,
            ),
            CommonTextField(
              controller: controller.pwdController,
              hintText: "Password",
              prefixIcon: const Icon(
                Icons.password_outlined,
                color: Colors.grey,
              ),
            ),
            const SizedBox(
              height: 10.0,
            ),
            CommonMaterialButton(
              color: ColorConfig.colorViolet,
              text: 'Login',
              onPressed: () {},
            ),
            const SizedBox(
              height: 10.0,
            ),
            CommonMaterialButton(
              color: ColorConfig.colorViolet,
              text: 'Register',
              onPressed: () {
                Get.toNamed(SignUpScreen.pageId);
              },
            )
          ],
        ),
      ),
    ));
  }
}
