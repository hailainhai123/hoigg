import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hoigg/pages/category/category_page.dart';
import 'package:hoigg/pages/home/controller/home_controller.dart';

import '../../widgets/main_app_bar.dart';
import '../news/news_page.dart';

class MainHomePage extends StatelessWidget {
  MainHomePage({Key? key}) : super(key: key);
  final HomeController homeController = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: DefaultTabController(
        length: 2,
        child: RefreshIndicator(
          notificationPredicate: (notification) {
            return notification.depth == 2;
          },
          onRefresh: () async =>
              Future.delayed(const Duration(seconds: 1), () => {}),
          child: NestedScrollView(
              headerSliverBuilder:
                  (BuildContext context, bool innerBoxIsScrolled) {
                return [
                  const MainAppBar(),
                ];
              },
              body: TabBarView(
                controller: homeController.tabController,
                physics: const NeverScrollableScrollPhysics(),
                children: const [
                  NewsPage(),
                  CategoryPage(),
                ],
              )),
        ),
      ),
    );
  }
}
