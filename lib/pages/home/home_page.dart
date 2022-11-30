import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hoigg/navigation_bar/navigation_bar.dart';
import 'package:hoigg/pages/home/controller/home_controller.dart';
import 'package:hoigg/pages/notification/notification_page.dart';

import '../drawer/menu_page.dart';
import '../main_home/main_home_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final HomeController controller =
        Get.put(HomeController(), permanent: true);
    return Scaffold(
        body: Obx(() {
          return _renderPages(controller.indexNavigation.value);
        }),
        bottomNavigationBar: NavigationBottomBar());
  }

  Widget _renderPages(int index) {
    switch (index) {
      case 0:
        return MainHomePage();
      case 1:
        return MenuPage();
      default:
        return const NotificationPage();
    }
  }
}
