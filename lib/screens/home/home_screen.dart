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
            physics: const ScrollPhysics(),
            headerSliverBuilder:
                (BuildContext context, bool innerBoxIsScrolled) => [
              CommonAppBar(
                toolbarHeight: 60,
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
                  padding: EdgeInsets.only(bottom: 20.0, left: 5.0),
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
              child: CustomScrollView(
                slivers: [
                  SliverToBoxAdapter(
                    child: SizedBox(
                      height: Get.height * 0.3,
                      child: PageView.builder(
                          controller: controller.pageController,
                          allowImplicitScrolling: true,
                          itemCount: controller.images.length,
                          pageSnapping: true,
                          itemBuilder: (context, pagePosition) {
                            return FadeInImage(
                              image:
                                  NetworkImage(controller.images[pagePosition]),
                              placeholder: AssetImage(
                                ImagePath.placeHolderImg,
                              ),
                              imageErrorBuilder: (context, error, stackTrace) {
                                return Image.asset(
                                  ImagePath.placeHolderImg,
                                );
                              },
                              fit: BoxFit.fill,
                            );
                          }),
                    ),
                  ),
                  SliverToBoxAdapter(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Align(
                        alignment: Alignment.topCenter,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: List<Widget>.generate(
                              controller.images.length, (index) {
                            return Container(
                              margin: const EdgeInsets.all(3),
                              width: 10,
                              height: 10,
                              decoration: BoxDecoration(
                                  color: controller.currentPage.value == index
                                      ? ColorConfig.colorDarkViolet
                                      : ColorConfig.colorGrey,
                                  shape: BoxShape.circle),
                            );
                          }),
                        ),
                      ),
                    ),
                  ),
                  SliverToBoxAdapter(
                    child: SizedBox(
                      height: Get.height * 0.17,
                      child: ListView.builder(
                        physics: const ScrollPhysics(),
                        reverse: false,
                        scrollDirection: Axis.horizontal,
                        itemCount: controller.cardList.length,
                        shrinkWrap: true,
                        itemBuilder: (BuildContext context, int index) {
                          return Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              children: [
                                MaterialButton(
                                  padding: const EdgeInsets.all(15),
                                  color: ColorConfig.colorDarkViolet,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20.0),
                                      side: BorderSide.none),
                                  onPressed: () {},
                                  child: Image.asset(
                                    controller.cardList[index].image.toString(),
                                    color: ColorConfig.colorWhite,
                                    scale: 10.0,
                                  ),
                                ),
                                const SizedBox(
                                  height: 5.0,
                                ),
                                Text(
                                  controller.cardList[index].name.toString(),
                                  style: const TextStyle(
                                      color: ColorConfig.colorDarkViolet),
                                )
                              ],
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                  SliverToBoxAdapter(
                    child: SizedBox(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              'Hair Service',
                              style: TextStyle(
                                  fontSize: 25,
                                  color: ColorConfig.colorDarkViolet,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: AppTextStyle.nunitoRegular),
                            ),
                            TextButton(
                              child: const Text(
                                'View All',
                                style: TextStyle(
                                    fontSize: 20,
                                    color: ColorConfig.colorDarkViolet,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: AppTextStyle.nunitoRegular),
                              ),
                              onPressed: () {},
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  SliverToBoxAdapter(
                    child: SizedBox(
                      height: Get.height * 0.27,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ListView.separated(
                          physics: const ScrollPhysics(),
                          reverse: false,
                          scrollDirection: Axis.horizontal,
                          itemCount: controller.images.length,
                          shrinkWrap: true,
                          itemBuilder: (BuildContext context, int index) {
                            return Container(
                              // width: Get.width * 0.4,
                              clipBehavior: Clip.hardEdge,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20.0),
                                  border: Border.all(
                                      width: 3.0,
                                      color: ColorConfig.colorDarkViolet)),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Card(
                                    margin: EdgeInsets.zero,
                                    shape: const RoundedRectangleBorder(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(20.0)),
                                        side: BorderSide.none),
                                    child: Image.asset(
                                        controller.cardList[index].image
                                            .toString(),
                                        width: Get.width * 0.4,
                                        scale: 7),
                                  ),
                                  const Padding(
                                    padding: EdgeInsets.all(8.0),
                                    child: Text(
                                      "Hair Service",
                                      style: TextStyle(
                                          color: ColorConfig.colorDarkViolet),
                                    ),
                                  )
                                ],
                              ),
                            );
                          },
                          separatorBuilder: (BuildContext context, int index) {
                            return const SizedBox(width: 20.0);
                          },
                        ),
                      ),
                    ),
                  ),
                  SliverToBoxAdapter(
                    child: SizedBox(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              'Makeup Service',
                              style: TextStyle(
                                  fontSize: 25,
                                  color: ColorConfig.colorDarkViolet,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: AppTextStyle.nunitoRegular),
                            ),
                            TextButton(
                              child: const Text(
                                'View All',
                                style: TextStyle(
                                    fontSize: 20,
                                    color: ColorConfig.colorDarkViolet,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: AppTextStyle.nunitoRegular),
                              ),
                              onPressed: () {},
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  SliverToBoxAdapter(
                    child: SizedBox(
                      height: Get.height * 0.3,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ListView.separated(
                          physics: const ScrollPhysics(),
                          reverse: false,
                          scrollDirection: Axis.horizontal,
                          itemCount: controller.images.length,
                          shrinkWrap: true,
                          itemBuilder: (BuildContext context, int index) {
                            return Container(
                              width: Get.width * 0.4,
                              clipBehavior: Clip.hardEdge,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20.0),
                                  border: Border.all(
                                      width: 3.0,
                                      color: ColorConfig.colorDarkViolet)),
                              child: Column(
                                children: [
                                  Card(
                                    margin: EdgeInsets.zero,
                                    shape: const RoundedRectangleBorder(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(20.0)),
                                        side: BorderSide.none),
                                    child: Image.asset(
                                        controller.cardList[index].image
                                            .toString(),
                                        width: Get.width * 0.4,
                                        scale: 10),
                                  ),
                                  const Text(
                                    "Hair Service",
                                    style: TextStyle(
                                        color: ColorConfig.colorDarkViolet),
                                  )
                                ],
                              ),
                            );
                          },
                          separatorBuilder: (BuildContext context, int index) {
                            return const SizedBox(width: 20.0);
                          },
                        ),
                      ),
                    ),
                  ),
                  SliverToBoxAdapter(
                    child: SizedBox(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              'Skin Service',
                              style: TextStyle(
                                  fontSize: 25,
                                  color: ColorConfig.colorDarkViolet,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: AppTextStyle.nunitoRegular),
                            ),
                            TextButton(
                              child: const Text(
                                'View All',
                                style: TextStyle(
                                    fontSize: 20,
                                    color: ColorConfig.colorDarkViolet,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: AppTextStyle.nunitoRegular),
                              ),
                              onPressed: () {},
                            )
                            // Text(
                            //   'View All',
                            //   style: TextStyle(
                            //       fontSize: 20,
                            //       color: ColorConfig.colorDarkViolet,
                            //       fontWeight: FontWeight.bold,
                            //       fontFamily: AppTextStyle.nunitoRegular),
                            // ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SliverToBoxAdapter(
                    child: SizedBox(
                      height: Get.height * 0.3,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ListView.separated(
                          physics: const ScrollPhysics(),
                          reverse: false,
                          scrollDirection: Axis.horizontal,
                          itemCount: controller.images.length,
                          shrinkWrap: true,
                          itemBuilder: (BuildContext context, int index) {
                            return Container(
                              width: Get.width * 0.4,
                              clipBehavior: Clip.hardEdge,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20.0),
                                  border: Border.all(
                                      width: 3.0,
                                      color: ColorConfig.colorDarkViolet)),
                              child: Column(
                                children: [
                                  Card(
                                    margin: EdgeInsets.zero,
                                    shape: const RoundedRectangleBorder(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(20.0)),
                                        side: BorderSide.none),
                                    child: Image.asset(
                                        controller.cardList[index].image
                                            .toString(),
                                        width: Get.width * 0.4,
                                        scale: 10),
                                  ),
                                  const Text(
                                    "Hair Service",
                                    style: TextStyle(
                                        color: ColorConfig.colorDarkViolet),
                                  )
                                ],
                              ),
                            );
                          },
                          separatorBuilder: (BuildContext context, int index) {
                            return const SizedBox(width: 20.0);
                          },
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ));
  }
// @override
// Widget build(BuildContext context) {
//   return Scaffold(
//       backgroundColor: ColorConfig.colorDarkViolet,
//       body: SafeArea(
//         child: NestedScrollView(
//           physics: const ScrollPhysics(),
//           headerSliverBuilder:
//               (BuildContext context, bool innerBoxIsScrolled) => [
//             CommonAppBar(
//               toolbarHeight: 60,
//               bottom: PreferredSize(
//                   preferredSize: const Size.fromHeight(1.0),
//                   child: Padding(
//                     padding: const EdgeInsets.all(8.0),
//                     child: Column(
//                       children: [
//                         Padding(
//                           padding: const EdgeInsets.all(8.0),
//                           child: CommonTextField(
//                             controller: controller.searchController,
//                             textInputType: TextInputType.text,
//                             hintText: "Search for ⭐ service",
//                             prefixIcon: Image.asset(
//                               ImagePath.searchIcon,
//                               scale: 23,
//                               color: ColorConfig.colorDarkViolet,
//                             ),
//                           ),
//                         )
//                       ],
//                     ),
//                   )),
//               title: const Padding(
//                 padding: EdgeInsets.only(bottom: 20.0, left: 5.0),
//                 child: Text(
//                   'Hi \nTara!',
//                   style: TextStyle(
//                       color: ColorConfig.colorWhite,
//                       fontWeight: FontWeight.bold,
//                       fontFamily: AppTextStyle.nunitoRegular,
//                       fontSize: 26),
//                 ),
//               ),
//               actions: <Widget>[
//                 Align(
//                   alignment: Alignment.topCenter,
//                   child: IconButton(
//                     iconSize: 30.0,
//                     icon: const Icon(Icons.menu),
//                     tooltip: 'Menu',
//                     onPressed: () {},
//                   ),
//                 ), //IconButton
//               ],
//             )
//           ],
//           body: Card(
//             clipBehavior: Clip.hardEdge,
//             shape: const RoundedRectangleBorder(
//                 borderRadius: BorderRadius.only(
//                     topLeft: Radius.circular(25),
//                     topRight: Radius.circular(25)),
//                 side: BorderSide.none),
//             child: SingleChildScrollView(
//               child: SizedBox(
//                 height: Get.height,
//                 child: Column(
//                   children: [
//                     SizedBox(
//                       height: Get.height * 0.3,
//                       child: PageView.builder(
//                           controller: controller.pageController,
//                           allowImplicitScrolling: true,
//                           itemCount: controller.images.length,
//                           pageSnapping: true,
//                           itemBuilder: (context, pagePosition) {
//                             return FadeInImage(
//                               image: NetworkImage(
//                                   controller.images[pagePosition]),
//                               placeholder: AssetImage(
//                                 ImagePath.placeHolderImg,
//                               ),
//                               imageErrorBuilder:
//                                   (context, error, stackTrace) {
//                                 return Image.asset(
//                                   ImagePath.placeHolderImg,
//                                 );
//                               },
//                               fit: BoxFit.fill,
//                             );
//                           }),
//                     ),
//                     Align(
//                       alignment: Alignment.topCenter,
//                       child: Row(
//                         crossAxisAlignment: CrossAxisAlignment.center,
//                         mainAxisAlignment: MainAxisAlignment.center,
//                         children: List<Widget>.generate(
//                             controller.images.length, (index) {
//                           return Container(
//                             margin: const EdgeInsets.all(3),
//                             width: 10,
//                             height: 10,
//                             decoration: BoxDecoration(
//                                 color: controller.currentPage.value == index
//                                     ? ColorConfig.colorDarkViolet
//                                     : ColorConfig.colorGrey,
//                                 shape: BoxShape.circle),
//                           );
//                         }),
//                       ),
//                     ),
//                     Expanded(
//                       child: ListView.builder(
//                         physics: const ScrollPhysics(),
//                         reverse: false,
//                         scrollDirection: Axis.horizontal,
//                         itemCount: controller.cardList.length,
//                         shrinkWrap: true,
//                         itemBuilder: (BuildContext context, int index) {
//                           return Padding(
//                             padding: const EdgeInsets.all(8.0),
//                             child: Column(
//                               children: [
//                                 MaterialButton(
//                                   padding: const EdgeInsets.all(15),
//                                   color: ColorConfig.colorDarkViolet,
//                                   shape: RoundedRectangleBorder(
//                                       borderRadius:
//                                           BorderRadius.circular(20.0),
//                                       side: BorderSide.none),
//                                   onPressed: () {},
//                                   child: Image.asset(
//                                     controller.cardList[index].image
//                                         .toString(),
//                                     color: ColorConfig.colorWhite,
//                                     scale: 10.0,
//                                   ),
//                                 ),
//                                 const SizedBox(
//                                   height: 5.0,
//                                 ),
//                                 Text(
//                                   controller.cardList[index].name.toString(),
//                                   style: const TextStyle(
//                                       color: ColorConfig.colorDarkViolet),
//                                 )
//                               ],
//                             ),
//                           );
//                         },
//                       ),
//                     ),
//                     Expanded(
//                       child: ListView.separated(
//                         physics: const ScrollPhysics(),
//                         reverse: false,
//                         scrollDirection: Axis.horizontal,
//                         itemCount: controller.images.length,
//                         shrinkWrap: true,
//                         itemBuilder: (BuildContext context, int index) {
//                           return Container(
//                             width: Get.width * 0.4,
//                             clipBehavior: Clip.hardEdge,
//                             decoration: BoxDecoration(
//                                 borderRadius: BorderRadius.circular(20.0),
//                                 border: Border.all(
//                                     width: 3.0,
//                                     color: ColorConfig.colorDarkViolet)),
//                             child: Column(
//                               children: [
//                                 Card(
//                                   margin: EdgeInsets.zero,
//                                   shape: const RoundedRectangleBorder(
//                                       borderRadius: BorderRadius.all(
//                                           Radius.circular(20.0)),
//                                       side: BorderSide.none),
//                                   child: Image.asset(
//                                       controller.cardList[index].image
//                                           .toString(),
//                                       width: Get.width * 0.4,
//                                       scale: 10),
//                                 ),
//                                 const Text(
//                                   "Hair Service",
//                                   style: TextStyle(
//                                       color: ColorConfig.colorDarkViolet),
//                                 )
//                               ],
//                             ),
//                           );
//                         },
//                         separatorBuilder: (BuildContext context, int index) {
//                           return const SizedBox(width: 20.0);
//                         },
//                       ),
//                     ),
//                     Expanded(
//                       child: ListView.separated(
//                         physics: const ScrollPhysics(),
//                         reverse: false,
//                         scrollDirection: Axis.horizontal,
//                         itemCount: controller.images.length,
//                         shrinkWrap: true,
//                         itemBuilder: (BuildContext context, int index) {
//                           return Container(
//                             width: Get.width * 0.4,
//                             clipBehavior: Clip.hardEdge,
//                             decoration: BoxDecoration(
//                                 borderRadius: BorderRadius.circular(20.0),
//                                 border: Border.all(
//                                     width: 3.0,
//                                     color: ColorConfig.colorDarkViolet)),
//                             child: Column(
//                               children: [
//                                 Card(
//                                   margin: EdgeInsets.zero,
//                                   shape: const RoundedRectangleBorder(
//                                       borderRadius: BorderRadius.all(
//                                           Radius.circular(20.0)),
//                                       side: BorderSide.none),
//                                   child: Image.asset(
//                                       controller.cardList[index].image
//                                           .toString(),
//                                       width: Get.width * 0.4,
//                                       scale: 10),
//                                 ),
//                                 const Text(
//                                   "Hair Service",
//                                   style: TextStyle(
//                                       color: ColorConfig.colorDarkViolet),
//                                 )
//                               ],
//                             ),
//                           );
//                         },
//                         separatorBuilder: (BuildContext context, int index) {
//                           return const SizedBox(width: 20.0);
//                         },
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//           ),
//         ),
//       ));
// }
}

// child: SizedBox(
// height: Get.height,
// child: Column(
// children: [
// SizedBox(
// height: Get.height * 0.3,
// child: PageView.builder(
// controller: controller.pageController,
// allowImplicitScrolling: true,
// itemCount: controller.images.length,
// pageSnapping: true,
// itemBuilder: (context, pagePosition) {
// return FadeInImage(
// image: NetworkImage(
// controller.images[pagePosition]),
// placeholder: AssetImage(
// ImagePath.placeHolderImg,
// ),
// imageErrorBuilder:
// (context, error, stackTrace) {
// return Image.asset(
// ImagePath.placeHolderImg,
// );
// },
// fit: BoxFit.fill,
// );
// }),
// ),
// Align(
// alignment: Alignment.topCenter,
// child: Row(
// crossAxisAlignment: CrossAxisAlignment.center,
// mainAxisAlignment: MainAxisAlignment.center,
// children: List<Widget>.generate(
// controller.images.length, (index) {
// return Container(
// margin: const EdgeInsets.all(3),
// width: 10,
// height: 10,
// decoration: BoxDecoration(
// color: controller.currentPage.value == index
// ? ColorConfig.colorDarkViolet
//     : ColorConfig.colorGrey,
// shape: BoxShape.circle),
// );
// }),
// ),
// ),
// Expanded(
// child: ListView.builder(
// physics: const ScrollPhysics(),
// reverse: false,
// scrollDirection: Axis.horizontal,
// itemCount: controller.cardList.length,
// shrinkWrap: true,
// itemBuilder: (BuildContext context, int index) {
// return Padding(
// padding: const EdgeInsets.all(8.0),
// child: Column(
// children: [
// MaterialButton(
// padding: const EdgeInsets.all(15),
// color: ColorConfig.colorDarkViolet,
// shape: RoundedRectangleBorder(
// borderRadius:
// BorderRadius.circular(20.0),
// side: BorderSide.none),
// onPressed: () {},
// child: Image.asset(
// controller.cardList[index].image
//     .toString(),
// color: ColorConfig.colorWhite,
// scale: 10.0,
// ),
// ),
// const SizedBox(
// height: 5.0,
// ),
// Text(
// controller.cardList[index].name.toString(),
// style: const TextStyle(
// color: ColorConfig.colorDarkViolet),
// )
// ],
// ),
// );
// },
// ),
// ),
// Expanded(
// child: ListView.separated(
// physics: const ScrollPhysics(),
// reverse: false,
// scrollDirection: Axis.horizontal,
// itemCount: controller.images.length,
// shrinkWrap: true,
// itemBuilder: (BuildContext context, int index) {
// return Container(
// width: Get.width * 0.4,
// clipBehavior: Clip.hardEdge,
// decoration: BoxDecoration(
// borderRadius: BorderRadius.circular(20.0),
// border: Border.all(
// width: 3.0,
// color: ColorConfig.colorDarkViolet)),
// child: Column(
// children: [
// Card(
// margin: EdgeInsets.zero,
// shape: const RoundedRectangleBorder(
// borderRadius: BorderRadius.all(
// Radius.circular(20.0)),
// side: BorderSide.none),
// child: Image.asset(
// controller.cardList[index].image
//     .toString(),
// width: Get.width * 0.4,
// scale: 10),
// ),
// const Text(
// "Hair Service",
// style: TextStyle(
// color: ColorConfig.colorDarkViolet),
// )
// ],
// ),
// );
// },
// separatorBuilder: (BuildContext context, int index) {
// return const SizedBox(width: 20.0);
// },
// ),
// ),
// Expanded(
// child: ListView.separated(
// physics: const ScrollPhysics(),
// reverse: false,
// scrollDirection: Axis.horizontal,
// itemCount: controller.images.length,
// shrinkWrap: true,
// itemBuilder: (BuildContext context, int index) {
// return Container(
// width: Get.width * 0.4,
// clipBehavior: Clip.hardEdge,
// decoration: BoxDecoration(
// borderRadius: BorderRadius.circular(20.0),
// border: Border.all(
// width: 3.0,
// color: ColorConfig.colorDarkViolet)),
// child: Column(
// children: [
// Card(
// margin: EdgeInsets.zero,
// shape: const RoundedRectangleBorder(
// borderRadius: BorderRadius.all(
// Radius.circular(20.0)),
// side: BorderSide.none),
// child: Image.asset(
// controller.cardList[index].image
//     .toString(),
// width: Get.width * 0.4,
// scale: 10),
// ),
// const Text(
// "Hair Service",
// style: TextStyle(
// color: ColorConfig.colorDarkViolet),
// )
// ],
// ),
// );
// },
// separatorBuilder: (BuildContext context, int index) {
// return const SizedBox(width: 20.0);
// },
// ),
// ),
// ],
// ),
// ),
