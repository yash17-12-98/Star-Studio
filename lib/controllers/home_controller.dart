import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../constant/constant.dart';
import 'controllers.dart';

class HomeController extends BaseController {
  final TextEditingController searchController = TextEditingController();
  final PageController pageController = PageController();
  RxInt currentPage = 0.obs;
  List<String> images = [
    "https://images.wallpapersden.com/image/download/purple-sunrise-4k-vaporwave_bGplZmiUmZqaraWkpJRmbmdlrWZlbWU.jpg",
    "https://wallpaperaccess.com/full/2637581.jpg",
    "https://wallpaperaccess.com/full/2637581.jpg"
  ];
  List<CardName> cardList = [
    CardName(name: "Hair", image: ImagePath.scissorIcon),
    CardName(name: "Makeup", image: ImagePath.makeUpIcon),
    CardName(name: "Skin", image: ImagePath.skinIcon),
    CardName(name: "Other", image: ImagePath.otherIcon),
  ];

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    Timer.periodic(const Duration(seconds: 5), (Timer timer) {
      if (currentPage.value < images.length - 1) {
        currentPage.value++;
      } else {
        currentPage.value = 0;
      }

      pageController.animateToPage(
        currentPage.value,
        duration: const Duration(milliseconds: 350),
        curve: Curves.easeIn,
      );
    });
    super.onReady();
  }
}

class CardName {
  String? name;
  String? image;

  CardName({this.name, this.image});
}
