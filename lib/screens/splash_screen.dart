import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/controllers.dart';

class SplashScreen extends GetView<SplashController> {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Container(color: Colors.purple,));
  }
}
