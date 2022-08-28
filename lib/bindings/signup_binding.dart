import 'package:get/get.dart';
import '../controllers/controllers.dart';

class SignUpBinding extends Bindings{
  @override
  void dependencies() {
    Get.put<SignUpController>(SignUpController());
  }

}