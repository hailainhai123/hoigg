import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hoigg/constants/theme.dart';
import 'package:hoigg/pages/account/accont_controller.dart';
import 'package:hoigg/pages/account/widgets/card_mission.dart';
import 'package:hoigg/pages/account/widgets/card_pay_history.dart';
import 'package:hoigg/pages/account/widgets/card_payment_method.dart';
import 'package:hoigg/pages/account/widgets/card_user_profile.dart';
import 'package:hoigg/widgets/custom_circle_avatar.dart';
import 'package:hoigg/widgets/stateful_widgets/touchable_opacity.dart';
import 'package:separated_row/separated_row.dart';

import '../../models/menu_account_item_data.dart';
import '../../widgets/primaryElevatedButton.dart';
import 'widgets/account_menu_item.dart';
import 'widgets/user_saved_list.dart';

final List<MenuAccountItemData> navItems = [
  MenuAccountItemData(id: "profile", title: "Hồ sơ"),
  MenuAccountItemData(id: "profile", title: "Kiếm xu"),
  MenuAccountItemData(id: "profile", title: "Lịch sử xu"),
  MenuAccountItemData(id: "profile", title: "Đã lưu"),
];

class AccountPage extends GetView<AccountController> {
  const AccountPage({Key? key}) : super(key: key);

  final styledNameText = const TextStyle(
    fontSize: 13,
    fontWeight: FontWeight.w600,
    color: kSecondaryColor,
  );

  @override
  Widget build(BuildContext context) {
    Get.put(AccountController());
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverAppBar(
              backgroundColor: backGroundColor,
              leading: TouchableOpacity(
                onTap: () => Navigator.of(context).pop(),
                child: const Icon(
                  Icons.arrow_back,
                  color: Colors.black,
                ),
              ),
              // actions: [
              //   Padding(
              //     padding: const EdgeInsets.only(right: 12.0),
              //     child: TouchableOpacity(
              //       child: const Icon(
              //         Icons.more_vert,
              //         color: Colors.black,
              //       ),
              //       onTap: () => {},
              //     ),
              //   )
              // ],
              actions: <Widget>[
                PopupMenuButton<int>(
                  icon: const Icon(
                    Icons.more_vert,
                    color: Colors.black,
                  ),
                  onSelected: (item) {},
                  itemBuilder: (context) => [
                    PopupMenuItem<int>(
                        value: 0,
                        child: SizedBox(
                          width: 136,
                          child: Row(
                            children: const [
                              Icon(Icons.login, color: primaryBlue),
                              SizedBox(width: 4),
                              Expanded(child: Text('Đăng xuất')),
                            ],
                          ),
                        )),
                    PopupMenuItem<int>(
                        value: 1,
                        child: SizedBox(
                          width: 136,
                          child: Row(
                            children: const [
                              Icon(
                                Icons.circle_outlined,
                                color: primaryBlue,
                              ),
                              SizedBox(width: 4),
                              Expanded(child: Text('Bật thông báo')),
                            ],
                          ),
                        )),
                  ],
                ),
              ],
              expandedHeight: 170,
              flexibleSpace: FlexibleSpaceBar(
                titlePadding: const EdgeInsets.only(bottom: 16),
                background: Padding(
                  padding: const EdgeInsets.only(top: 24),
                  child: Column(
                    children: [
                      CustomCircleAvatar(
                        radius: 48,
                        onClick: () => {},
                      ),
                      const SizedBox(height: 8),
                      const Text(
                        "Hanhlt",
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 20,
                        ),
                      ),
                      const Text(
                        'HCM',
                        style: TextStyle(
                          fontSize: 11,
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: SizedBox(
                width: double.infinity,
                child: Column(
                  children: [
                    const SizedBox(height: 11),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Flexible(
                          child: Column(
                            children: const [
                              Text(
                                'Bạn đang có:',
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              Text(
                                '23 Xu',
                                style: TextStyle(
                                  color: Color(0xFFD96B80),
                                  fontSize: 28,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(width: 32),
                        Flexible(
                          child: SizedBox(
                            width: double.infinity,
                            child: PrimaryElevatedButton(
                              onClick: () => {},
                              child: const Text(
                                "Nạp xu",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 18,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 12),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 18),
                      child: Divider(
                        thickness: 1,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Padding(
                        padding: const EdgeInsets.all(6),
                        child: IntrinsicHeight(
                          child: SeparatedRow(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            separatorBuilder:
                                (BuildContext context, int index) {
                              return const VerticalDivider();
                            },
                            children: List.generate(
                              navItems.length,
                              (index) {
                                return Obx(() => AccountMenuItem(
                                      changeColor:
                                          controller.indexPage.value == index,
                                      title: navItems[index].title,
                                      onClick: () =>
                                          {controller.indexPage.value = index},
                                    ));
                              },
                            ),
                          ),
                        ),
                      ),
                    ),
                    const Divider(
                      thickness: 3,
                    ),
                    Builder(builder: (ctx) {
                      return Obx(() {
                        return _renderWidgetByIndex();
                      });
                    }),
                    // SizedBox(height: MediaQuery.of(context).padding.bottom + 40),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _renderWidgetByIndex() {
    var index = controller.indexPage.value;
    switch (index) {
      case 0:
        return const CardUserProfile();
      case 1:
        return const CardMission();
      case 2:
        return const CardPayHistory();
      default:
        return const UserSavedList();
    }
  }
}
