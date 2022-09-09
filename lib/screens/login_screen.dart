import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:star_studio/constant/color_config.dart';
import 'package:star_studio/constant/constant.dart';
import 'package:star_studio/constant/image_path.dart';
import 'package:star_studio/screens/home/home_screen.dart';
import 'package:star_studio/screens/signup_screen.dart';
import '../common/common.dart';
import '../controllers/controllers.dart';

class LoginScreen extends GetView<LoginController> {
  static const pageId = '/login';

  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: ColorConfig.colorDarkViolet,
        resizeToAvoidBottomInset: false,
        body: SafeArea(
          bottom: false,
          child: Stack(
            children: [
              Image.asset(
                ImagePath.loginStudio,
                scale: 0.1,
              ),
              ModalBarrier(
                color: Colors.black.withOpacity(0.5),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 170.0),
                child: Card(
                  color: ColorConfig.colorDarkViolet,
                  shadowColor: Colors.black,
                  shape: const RoundedRectangleBorder(
                      borderRadius:
                          BorderRadius.only(topLeft: Radius.circular(90)),
                      side: BorderSide.none),
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 30.0,
                        ),
                        Text(
                          'Login'.toUpperCase(),
                          style: CustomTextStyle.goldHeadingTextStyle,
                        ),
                        Text(
                          'Please login to continue using ⭐ app',
                          textAlign: TextAlign.center,
                          style: CustomTextStyle.goldSubTitleTextStyle,
                        ),
                        const SizedBox(
                          height: 30.0,
                        ),
                        CommonTextField(
                          controller: controller.emailController,
                          hintText: "Email",
                          textInputType: TextInputType.emailAddress,
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
                          controller: controller.pwdController,
                          textInputType: TextInputType.visiblePassword,
                          hintText: "Password",
                          prefixIcon: Image.asset(
                            ImagePath.pwdIcon,
                            scale: 23,
                            color: ColorConfig.colorDarkViolet,
                          ),
                        ),
                        const SizedBox(
                          height: 10.0,
                        ),
                        Align(
                          alignment: Alignment.centerRight,
                          child: Text(
                            'Forget Password?',
                            textAlign: TextAlign.center,
                            style: CustomTextStyle.goldSubTitleTextStyle,
                          ),
                        ),
                        const SizedBox(
                          height: 20.0,
                        ),
                        CommonMaterialButton(
                          color: ColorConfig.colorViolet,
                          text: 'Login',
                          onPressed: () {
                            Get.toNamed(HomeScreen.pageId);
                          },
                        ),
                        const SizedBox(
                          height: 20.0,
                        ),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text(
                                "Don't have ⭐ Account?",
                                textAlign: TextAlign.center,
                                style: CustomTextStyle.goldSubTitleTextStyle,
                              ),
                              Image.asset(
                                ImagePath.fingerRightIcon,
                                scale: 20,
                                color: ColorConfig.colorShineGold,
                              ),
                              GestureDetector(
                                onTap: () {
                                  Get.toNamed(SignUpScreen.pageId);
                                },
                                child: Text(
                                  "Signup",
                                  textAlign: TextAlign.center,
                                  style: CustomTextStyle
                                      .goldSubTitleUnderlineTextStyle,
                                ),
                              ),
                            ],
                          ),
                        ),
                        // const SizedBox(
                        //   height: 10.0,
                        // ),
                        // CommonMaterialButton(
                        //   color: ColorConfig.colorViolet,
                        //   text: 'Register',
                        //   onPressed: () {
                        //     Get.toNamed(SignUpScreen.pageId);
                        //   },
                        // )
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
