import 'package:get/get.dart';
import '../screens/screens.dart';
import 'controllers.dart';

class SplashController extends BaseController{

  @override
  void onInit() {
    super.onInit();
    print("Init State");
  }

  @override
  void onReady() {
    super.onReady();
    Future.delayed(const Duration(seconds: 2), () {
      Get.toNamed(LoginScreen.pageId);
    });
  }

}