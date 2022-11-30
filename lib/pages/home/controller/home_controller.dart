import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../../../utils/utils.dart';

class HomeController extends GetxController
    with GetTickerProviderStateMixin {
  final iconList = <String>[
    'assets/svg/tab_bar/home.svg',
    'assets/svg/tab_bar/drawer.svg',
    'assets/svg/tab_bar/notification.svg',
  ];

  // final autoSizeGroup = AutoSizeGroup();
  var indexNavigation = 0.obs;
  late AnimationController _animationController;
  late Animation<double> animation;
  late CurvedAnimation curve;
  late TabController tabController;

  var indexPage = 0.obs;

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    tabController = TabController(
      initialIndex: 0,
      length: 2,
      vsync: this,
    );

    final systemTheme = SystemUiOverlayStyle.light.copyWith(
      systemNavigationBarColor: HexColor('#373A36'),
      systemNavigationBarIconBrightness: Brightness.light,
    );
    SystemChrome.setSystemUIOverlayStyle(systemTheme);

    _animationController = AnimationController(
      duration: const Duration(seconds: 1),
      vsync: this,
    );
    curve = CurvedAnimation(
      parent: _animationController,
      curve: const Interval(
        0.5,
        1.0,
        curve: Curves.fastOutSlowIn,
      ),
    );
    animation = Tween<double>(
      begin: 0,
      end: 1,
    ).animate(curve);

    Future.delayed(
      const Duration(seconds: 1),
      () => _animationController.forward(),
    );
  }

  void onTap(int index) {
    indexNavigation.value = index;
  }

  Widget buildItemWidget(int index, bool isActive) {
    return Padding(
      padding: EdgeInsets.all(index == 1
          ? isActive
              ? 16
              : 18
          : isActive
              ? 14
              : 16.0),
      child: SvgPicture.asset(iconList[index],
          color: isActive ? HexColor('#5365FD') : HexColor('#75818F')),
    );
  }

  void changeIndexPage(int index) {
    tabController.index = index;
  }
}
