import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:star_studio/common/common.dart';
import '../../constant/constant.dart';
import '../../controllers/controllers.dart';

class HomeScreen extends GetView<HomeController> {
  static const pageId = '/home';

  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: ColorConfig.colorDarkViolet,
        body: SafeArea(
          child: NestedScrollView(
            headerSliverBuilder:
                (BuildContext context, bool innerBoxIsScrolled) => [
              CommonAppBar(
                toolbarHeight: 140,
                bottom: PreferredSize(
                    preferredSize: const Size.fromHeight(1.0),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: CommonTextField(
                              controller: controller.searchController,
                              textInputType: TextInputType.text,
                              hintText: "Search for ⭐ service",
                              prefixIcon: Image.asset(
                                ImagePath.searchIcon,
                                scale: 23,
                                color: ColorConfig.colorDarkViolet,
                              ),
                            ),
                          )
                        ],
                      ),
                    )),
                title: const Padding(
                  padding: EdgeInsets.only(bottom: 15.0, left: 5.0),
                  child: Text(
                    'Hi \nTara!',
                    style: TextStyle(
                        color: ColorConfig.colorWhite,
                        fontWeight: FontWeight.bold,
                        fontFamily: AppTextStyle.nunitoRegular,
                        fontSize: 26),
                  ),
                ),
                actions: <Widget>[
                  Align(
                    alignment: Alignment.topCenter,
                    child: IconButton(
                      iconSize: 30.0,
                      icon: const Icon(Icons.menu),
                      tooltip: 'Menu',
                      onPressed: () {},
                    ),
                  ), //IconButton
                ],
              )
            ],
            body: Card(
              clipBehavior: Clip.hardEdge,
              shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(25),
                      topRight: Radius.circular(25)),
                  side: BorderSide.none),
              child: Column(
                children: [
                  Expanded(
                    child: Stack(
                      children: [
                        PageView.builder(
                          allowImplicitScrolling: true,
                            itemCount: 2,
                            pageSnapping: true,
                            itemBuilder: (context, pagePosition) {
                              return Align(
                                  alignment: Alignment.topCenter,
                                  child: Image.network(
                                      controller.images[pagePosition]));
                            }),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ));
  }
}
