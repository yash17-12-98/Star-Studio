import 'package:flutter/material.dart';

import '../constant/constant.dart';

class CommonAppBar extends StatelessWidget {
  final PreferredSizeWidget? bottom;
  final double? toolbarHeight;
  final bool? centerTitle;
  final List<Widget>? actions;
  final Widget? title;

  const CommonAppBar(
      {Key? key,
      this.bottom,
      this.toolbarHeight = 0.0,
      this.centerTitle = false,
      this.actions,
      this.title})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      snap: true,
      pinned: false,
      floating: true,
      automaticallyImplyLeading: false,
      toolbarHeight: kToolbarHeight + toolbarHeight!,
      centerTitle: centerTitle,
      title: title,
      bottom: bottom,
      expandedHeight: 200,
      // flexibleSpace: FlexibleSpaceBar(
      //   title: Padding(
      //     padding: const EdgeInsets.all(8.0),
      //     child: Column(
      //       mainAxisAlignment: MainAxisAlignment.end,
      //       children: [
      //         Padding(
      //           padding: const EdgeInsets.all(8.0),
      //           child: CommonTextField(
      //             // controller: controller.searchController,
      //             textInputType: TextInputType.text,
      //             hintText: "Search for ⭐ service",
      //             prefixIcon: Image.asset(
      //               ImagePath.searchIcon,
      //               scale: 23,
      //               color: ColorConfig.colorDarkViolet,
      //             ),
      //           ),
      //         )
      //       ],
      //     ),
      //   ),
      // ),

      backgroundColor: ColorConfig.colorDarkViolet,
      //IconButton
      actions: actions, //<Widget>[]
    );
  }
}
