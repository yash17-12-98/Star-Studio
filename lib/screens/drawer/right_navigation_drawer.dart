import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../common/common.dart';
import '../../constant/constant.dart';

class RightNavigationDrawer extends StatelessWidget {
  const RightNavigationDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: Get.width,
        child: Drawer(
          backgroundColor: Colors.white.withOpacity(0.9),
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: ListView(
              children: [
                const SizedBox(
                  height: 10.0,
                ),
                Card(
                  shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                      side: BorderSide.none),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: CircleAvatar(
                            radius: 40,
                            backgroundColor: ColorConfig.colorDarkViolet,
                            child: Image.asset(
                              ImagePath.userIcon,
                              scale: 12,
                              color: ColorConfig.colorWhite,
                            ),
                          ),
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Expanded(
                                    child: Text(
                                      'Tara',
                                      style: CustomTextStyle
                                          .violetBoldNameTextStyle,
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
                                    tooltip: 'profile',
                                    onPressed: () {
                                      Scaffold.of(context).openEndDrawer();
                                    },
                                  ),
                                ],
                              ),
                              Text(
                                'tinajain1305@gmail.com',
                                style:
                                    CustomTextStyle.violetLightSubNameTextStyle,
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Row(
                  children: [
                    Expanded(
                      child: Card(
                        shape: const RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(10.0)),
                            side: BorderSide.none),
                        child: Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Column(
                            children: [
                              Image.asset(
                                ImagePath.heartIcon,
                                scale: 10,
                                color: ColorConfig.colorDarkViolet,
                              ),
                              const SizedBox(
                                height: 5.0,
                              ),
                              Text(
                                'Likes',
                                style: CustomTextStyle
                                    .violetLightSmallNameTextStyle,
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Card(
                        shape: const RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(10.0)),
                            side: BorderSide.none),
                        child: Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Column(
                            children: [
                              Image.asset(
                                ImagePath.notificationIcon,
                                scale: 10,
                                color: ColorConfig.colorDarkViolet,
                              ),
                              const SizedBox(
                                height: 5.0,
                              ),
                              Text(
                                'Notification',
                                style: CustomTextStyle
                                    .violetLightSmallNameTextStyle,
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Card(
                        shape: const RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(10.0)),
                            side: BorderSide.none),
                        child: Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Column(
                            children: [
                              Image.asset(
                                ImagePath.homeIcon,
                                scale: 10,
                                color: ColorConfig.colorDarkViolet,
                              ),
                              const SizedBox(
                                height: 5.0,
                              ),
                              Text(
                                'Home',
                                style: CustomTextStyle
                                    .violetLightSmallNameTextStyle,
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Card(
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
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Schedule',
                              style:
                                  CustomTextStyle.violetMediumSubNameTextStyle,
                            ),
                            const SizedBox(
                              height: 10.0,
                            ),
                            Row(
                              children: [
                                Image.asset(
                                  ImagePath.scheduleIcon,
                                  scale: 15,
                                  color: ColorConfig.colorDarkViolet,
                                ),
                                const SizedBox(
                                  width: 10.0,
                                ),
                                Text(
                                  'My Schedule',
                                  style: CustomTextStyle
                                      .violetLightSubNameTextStyle,
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 10.0,
                            ),
                            Row(
                              children: [
                                Image.asset(
                                  ImagePath.checkedIcon,
                                  scale: 16,
                                  color: ColorConfig.colorDarkViolet,
                                ),
                                const SizedBox(
                                  width: 10.0,
                                ),
                                Text(
                                  'All Schedule',
                                  style: CustomTextStyle
                                      .violetLightSubNameTextStyle,
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 10.0,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Card(
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
                                'Feedback',
                                style: CustomTextStyle
                                    .violetMediumSubNameTextStyle,
                              ),
                              const SizedBox(
                                height: 10.0,
                              ),
                              Row(
                                children: [
                                  Image.asset(
                                    ImagePath.viewFeedbackIcon,
                                    scale: 15,
                                    color: ColorConfig.colorDarkViolet,
                                  ),
                                  const SizedBox(
                                    width: 10.0,
                                  ),
                                  Expanded(
                                    child: Row(
                                      children: [
                                        Expanded(
                                          child: Text(
                                            'View Feedback',
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
                                              color:
                                                  ColorConfig.colorDarkViolet,
                                            ),
                                            tooltip: 'Log out',
                                            onPressed: () {},
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 10.0,
                              ),
                              Row(
                                children: [
                                  Image.asset(
                                    ImagePath.sendFeedbackIcon,
                                    scale: 16,
                                    color: ColorConfig.colorDarkViolet,
                                  ),
                                  const SizedBox(
                                    width: 10.0,
                                  ),
                                  Expanded(
                                    child: Row(
                                      children: [
                                        Expanded(
                                          child: Text(
                                            'Send Feedback',
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
                                          tooltip: 'profile',
                                          onPressed: () {
                                            Scaffold.of(context)
                                                .openEndDrawer();
                                          },
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
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
                ),
                Card(
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
                        child: Row(
                          children: [
                            Expanded(
                              child: Text(
                                'Logout',
                                style: CustomTextStyle
                                    .violetMediumSubNameTextStyle,
                              ),
                            ),
                            IconButton(
                              iconSize: 30.0,
                              icon: Image.asset(
                                ImagePath.logoutIcon,
                                scale: 10.0,
                                color: ColorConfig.colorDarkViolet,
                              ),
                              tooltip: 'LOG OUT',
                              onPressed: () {
                                Scaffold.of(context).openEndDrawer();
                              },
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                CommonDrawerCard(
                  title: 'Feedback',
                  firstTitle: 'View Feedback',
                  firstIcon: Image.asset(
                    ImagePath.viewFeedbackIcon,
                    scale: 15,
                    color: ColorConfig.colorDarkViolet,
                  ),
                  firstOnTap: () {},
                  secondTitle: 'Send Feedback',
                  secondIcon: Image.asset(
                    ImagePath.sendFeedbackIcon,
                    scale: 16,
                    color: ColorConfig.colorDarkViolet,
                  )
                ),
                const SizedBox(
                  height: 10.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: const [
                    Text(
                      'Swipe right to go back',
                    ),
                    Icon(
                      Icons.arrow_forward_ios,
                      size: 15,
                      color: ColorConfig.colorDarkViolet,
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class Menu extends StatefulWidget {
  const Menu({super.key});

  @override
  State<Menu> createState() => _MenuState();
}

class _MenuState extends State<Menu> with SingleTickerProviderStateMixin {
  static const _menuTitles = [
    'Declarative style',
    'Premade widgets',
    'Stateful hot reload',
    'Native performance',
    'Great community',
  ];

  static const _initialDelayTime = Duration(milliseconds: 50);
  static const _itemSlideTime = Duration(milliseconds: 250);
  static const _staggerTime = Duration(milliseconds: 50);
  static const _buttonDelayTime = Duration(milliseconds: 150);
  static const _buttonTime = Duration(milliseconds: 500);
  final _animationDuration = _initialDelayTime +
      (_staggerTime * _menuTitles.length) +
      _buttonDelayTime +
      _buttonTime;

  late AnimationController _staggeredController;
  final List<Interval> _itemSlideIntervals = [];
  late Interval _buttonInterval;

  @override
  void initState() {
    super.initState();

    _createAnimationIntervals();

    _staggeredController = AnimationController(
      vsync: this,
      duration: _animationDuration,
    )..forward();
  }

  void _createAnimationIntervals() {
    for (var i = 0; i < _menuTitles.length; ++i) {
      final startTime = _initialDelayTime + (_staggerTime * i);
      final endTime = startTime + _itemSlideTime;
      _itemSlideIntervals.add(
        Interval(
          startTime.inMilliseconds / _animationDuration.inMilliseconds,
          endTime.inMilliseconds / _animationDuration.inMilliseconds,
        ),
      );
    }

    final buttonStartTime =
        Duration(milliseconds: (_menuTitles.length * 50)) + _buttonDelayTime;
    final buttonEndTime = buttonStartTime + _buttonTime;
    _buttonInterval = Interval(
      buttonStartTime.inMilliseconds / _animationDuration.inMilliseconds,
      buttonEndTime.inMilliseconds / _animationDuration.inMilliseconds,
    );
  }

  @override
  void dispose() {
    _staggeredController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Stack(
        fit: StackFit.expand,
        children: [
          _buildFlutterLogo(),
          _buildContent(),
        ],
      ),
    );
  }

  Widget _buildFlutterLogo() {
    return const Positioned(
      right: -100,
      bottom: -30,
      child: Opacity(
        opacity: 0.2,
        child: FlutterLogo(
          size: 400,
        ),
      ),
    );
  }

  Widget _buildContent() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 16),
        ..._buildListItems(),
        const Spacer(),
        _buildGetStartedButton(),
      ],
    );
  }

  List<Widget> _buildListItems() {
    final listItems = <Widget>[];
    for (var i = 0; i < _menuTitles.length; ++i) {
      listItems.add(
        AnimatedBuilder(
          animation: _staggeredController,
          builder: (context, child) {
            final animationPercent = Curves.easeOut.transform(
              _itemSlideIntervals[i].transform(_staggeredController.value),
            );
            final opacity = animationPercent;
            final slideDistance = (1.0 - animationPercent) * 150;

            return Opacity(
              opacity: opacity,
              child: Transform.translate(
                offset: Offset(slideDistance, 0),
                child: child,
              ),
            );
          },
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 36.0, vertical: 16),
            child: Text(
              _menuTitles[i],
              textAlign: TextAlign.left,
              style: const TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ),
      );
    }
    return listItems;
  }

  Widget _buildGetStartedButton() {
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.all(24.0),
        child: AnimatedBuilder(
          animation: _staggeredController,
          builder: (context, child) {
            final animationPercent = Curves.elasticOut.transform(
                _buttonInterval.transform(_staggeredController.value));
            final opacity = animationPercent.clamp(0.0, 1.0);
            final scale = (animationPercent * 0.5) + 0.5;

            return Opacity(
              opacity: opacity,
              child: Transform.scale(
                scale: scale,
                child: child,
              ),
            );
          },
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              shape: const StadiumBorder(),
              backgroundColor: Colors.blue,
              padding: const EdgeInsets.symmetric(horizontal: 48, vertical: 14),
            ),
            onPressed: () {},
            child: const Text(
              'Get started',
              style: TextStyle(
                color: Colors.white,
                fontSize: 22,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
