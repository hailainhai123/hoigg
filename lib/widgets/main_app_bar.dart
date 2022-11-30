import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:hoigg/constants/theme.dart';
import 'package:hoigg/models/app_bar_nav_item_data.dart';
import 'package:hoigg/pages/account/account_page.dart';
import 'package:hoigg/pages/category/category_page.dart';
import 'package:hoigg/pages/home/controller/home_controller.dart';
import 'package:hoigg/pages/shopping/shopping_page.dart';

// import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';
import 'package:searchfield/searchfield.dart';

import 'ink_tap.dart';

final navItems = [
  AppBarNavItemData(
      iconPath: "assets/svg/news_icon.svg", title: "Bảng tin", to: ""),
  AppBarNavItemData(
      iconPath: "assets/svg/category_icon.svg", title: "Chuyên mục", to: ""),
  AppBarNavItemData(
      iconPath: "assets/svg/my_page_icon.svg", title: "Trang của tôi", to: ""),
  AppBarNavItemData(
      iconPath: "assets/svg/news_icon.svg", title: "H Store", to: ""),
];

class MainAppBar extends StatelessWidget {
  const MainAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final HomeController controller = Get.find();
    return SliverAppBar(
      titleSpacing: 24,
      backgroundColor: Colors.transparent,
      title: Container(
        margin: const EdgeInsets.symmetric(vertical: 16),
        child: SearchField<String>(
          searchStyle:
              const TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
          searchInputDecoration: InputDecoration(
            isDense: true,
            filled: true,
            fillColor: Colors.white,
            prefixIcon: const Icon(
              Icons.search,
              color: kTextColor,
              size: 24,
            ),
            contentPadding: const EdgeInsets.fromLTRB(24, 8, 8, 24),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: const BorderSide(
                color: Colors.white,
              ),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: BorderSide.none,
            ),
          ),
          suggestionsDecoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.white,
          ),
          suggestions: [
            SearchFieldListItem(
              'tes',
              child: const Padding(
                padding: EdgeInsets.only(left: 34),
                child: Text("Kỹ năn rèn luyện thể dục thể thao"),
              ),
            ),
            SearchFieldListItem(
              'tes',
              child: const Padding(
                padding: EdgeInsets.only(left: 34),
                child: Text("Kỹ năn rèn luyện thể dục thể thao"),
              ),
            ),
            SearchFieldListItem(
              'tes',
              child: const Padding(
                padding: EdgeInsets.only(left: 34),
                child: Text("Kỹ năn rèn luyện thể dục thể thao"),
              ),
            ),
          ],
          // in: InputDecoration(
          //   isDense: true,
          //   filled: true,
          //   fillColor: Colors.white,
          // ),
        ),
      ),
      expandedHeight: 168,
      pinned: true,
      collapsedHeight: 64,
      elevation: 0,
      scrolledUnderElevation: 4,
      flexibleSpace: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xFF849DF8),
              Color(0xFFC5B9FF),
            ],
          ),
        ),
        child: FlexibleSpaceBar(
            background: ListView(
          scrollDirection: Axis.horizontal,
          padding: const EdgeInsets.fromLTRB(24, 120, 8, 8),
          children: List.generate(navItems.length, (index) {
            return AppBarNavItem(
              title: navItems[index].title,
              icon: SvgPicture.asset(
                navItems[index].iconPath,
                color: Colors.white,
              ),
              onClick: () => {
                if (index == 2)
                  {Get.to(() => AccountPage())}
                else if (index == 3)
                  {Get.to(() => ShoppingPage())}
                else
                  {controller.changeIndexPage(index)}
              },
            );
          }),
        )),
      ),
    );
  }
}

class AppBarNavItem extends StatelessWidget {
  const AppBarNavItem({
    Key? key,
    required this.title,
    required this.icon,
    required this.onClick,
  }) : super(key: key);

  final String title;
  final Widget icon;
  final Function onClick;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 40),
      child: InkTap(
        onClick: () => onClick(),
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(10),
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Color(0xFF5365FD),
              ),
              child: icon,
            ),
            const SizedBox(height: 6),
            Text(
              title,
              style: const TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 13,
              ),
            )
          ],
        ),
      ),
    );
  }
}
