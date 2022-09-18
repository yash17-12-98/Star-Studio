import 'package:flutter/material.dart';

import '../constant/constant.dart';

class CommonDrawerCard extends StatelessWidget {
  final String? title;
  final Widget? firstIcon;
  final VoidCallback? firstOnTap;
  final String? firstTitle;
  final Widget? secondIcon;
  final VoidCallback? secondOnTap;
  final String? secondTitle;

  const CommonDrawerCard(
      {Key? key,
      this.title,
      this.firstIcon,
      this.firstTitle,
      this.secondIcon,
      this.secondTitle,
      this.firstOnTap,
      this.secondOnTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
          side: BorderSide.none),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: const EdgeInsets.only(top: 10.0),
            height: 30.0,
            width: 10.0,
            decoration: const BoxDecoration(
              color: ColorConfig.colorDarkViolet,
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(5.0),
                  bottomRight: Radius.circular(5.0)),
            ),
          ),
          const SizedBox(
            width: 10.0,
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title.toString(),
                    style: CustomTextStyle.violetMediumSubNameTextStyle,
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                  InkWell(
                    onTap: firstOnTap,
                    child: Row(
                      children: [
                        firstIcon!,
                        const SizedBox(
                          width: 10.0,
                        ),
                        Expanded(
                          child: Row(
                            children: [
                              Expanded(
                                child: Text(
                                  firstTitle.toString(),
                                  style: CustomTextStyle
                                      .violetLightSubNameTextStyle,
                                ),
                              ),
                              Align(
                                alignment: Alignment.centerRight,
                                child: IconButton(
                                  padding: EdgeInsets.zero,
                                  iconSize: 30.0,
                                  icon: const Icon(
                                    Icons.arrow_forward_ios,
                                    size: 25,
                                    color: ColorConfig.colorDarkViolet,
                                  ),
                                  onPressed: () {},
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                  InkWell(
                    onTap: secondOnTap,
                    child: Row(
                      children: [
                        secondIcon!,
                        const SizedBox(
                          width: 10.0,
                        ),
                        Expanded(
                          child: Row(
                            children: [
                              Expanded(
                                child: Text(
                                  secondTitle.toString(),
                                  style: CustomTextStyle
                                      .violetLightSubNameTextStyle,
                                ),
                              ),
                              IconButton(
                                padding: EdgeInsets.zero,
                                iconSize: 30.0,
                                icon: const Icon(
                                  Icons.arrow_forward_ios,
                                  size: 25,
                                  color: ColorConfig.colorDarkViolet,
                                ),
                                onPressed: () {
                                  // Scaffold.of(context).openEndDrawer();
                                },
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
