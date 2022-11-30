import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:hoigg/pages/home/controller/home_controller.dart';

import '../constants/routers.dart';
import '../utils/utils.dart';

// //
// class NavigationBottomBar extends StatefulWidget {
//   @override
//   State<NavigationBottomBar> createState() => _NavigationBottomBarState();
// }

// class _NavigationBottomBarState extends State<NavigationBottomBar> {
class NavigationBottomBar extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    // final HomeController controller = Get.find();
    return Obx(() {
      return AnimatedBottomNavigationBar.builder(
        itemCount: 3,
        tabBuilder: (int index, bool isActive) {
          return controller.buildItemWidget(index, isActive);
        },
        backgroundColor: Colors.white,
        activeIndex: controller.indexNavigation.value,
        splashColor: HexColor('#5365FD'),
        notchAndCornersAnimation: controller.animation,
        splashSpeedInMilliseconds: 300,
        notchSmoothness: NotchSmoothness.defaultEdge,
        gapLocation: GapLocation.none,
        onTap: (index) {
          // setState(() {});
          controller.onTap(index);
        },
      );
    });
  }
}
