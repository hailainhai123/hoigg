import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:get/get.dart';
import 'package:hoigg/constants/routers.dart';
import 'package:hoigg/pages/drawer/controller/menu_controller.dart';
import 'package:hoigg/pages/home/controller/home_controller.dart';

import '../../constants/theme.dart';
import '../../widgets/stateful_widgets/touchable_opacity.dart';
import 'drawer_menu_tile.dart';

class MenuPage extends GetView<MenuController> {
  final GlobalKey dropdownKey = GlobalKey();

  MenuPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final HomeController homeController = Get.find();
    final MenuController controller = Get.put(MenuController());

    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 60),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Container(
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        image: const DecorationImage(
                          fit: BoxFit.cover,
                          image: NetworkImage(
                              'https://randomwordgenerator.com/img/picture-generator/51e7d7404a53b10ff3d8992cc12c30771037dbf85254784b772872d19f4b_640.jpg'),
                        ),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 16.0),
                      child: Text('UserName', style: baseTitleTextStyle),
                    )
                  ],
                ),
                TouchableOpacity(
                  onTap: () => homeController.indexNavigation.value = 0,
                  child: const Icon(
                    Icons.clear,
                    color: kSubTextColor,
                  ),
                )
              ],
            ),
            Flexible(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 8),
                    const Divider(),
                    const SizedBox(height: 8),
                    Obx(() {
                      bool showDrop = controller.showDropDownClass.value;
                      return GestureDetector(
                        onTapDown: (details) {
                          controller.showDropDownClass.value = true;
                        },
                        child: DropdownButton2(
                          barrierDismissible: false,
                          key: dropdownKey,
                          onChanged: (value) => {
                            controller.changeClass(value!),
                            controller.showDropDownClass.value = false
                          },
                          icon: const Icon(
                            Icons.keyboard_arrow_down,
                            color: Colors.white,
                          ),
                          buttonDecoration: BoxDecoration(
                            color: const Color(0xFF5365FD),
                            borderRadius: BorderRadius.only(
                              topLeft: const Radius.circular(5),
                              topRight: const Radius.circular(5),
                              bottomLeft: showDrop
                                  ? const Radius.circular(0)
                                  : const Radius.circular(5),
                              bottomRight: showDrop
                                  ? const Radius.circular(0)
                                  : const Radius.circular(5),
                            ),
                          ),
                          dropdownDecoration: const BoxDecoration(
                            color: Color(0xFF5365FD),
                          ),
                          style: const TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w400,
                            fontSize: 14,
                          ),
                          buttonPadding: const EdgeInsets.symmetric(
                            horizontal: 27,
                          ),
                          value: "1",
                          items: const [
                            DropdownMenuItem(
                              value: "1",
                              child: Text("Lớp 9"),
                            ),
                            DropdownMenuItem(
                              value: "2",
                              child: Text("Lớp 10"),
                            ),
                          ],
                        ),
                      );
                    }),
                    const DrawerMenuTile(
                      title: "Chuyên mục",
                    ),
                    const DrawerMenuTile(
                      title: "Chương trình hiện tại",
                    ),
                    const DrawerMenuTile(
                      title: "Chân trời sáng tạo",
                    ),
                    const DrawerMenuTile(
                      title: "Cánh diều",
                    ),
                    const DrawerMenuTile(
                      title: "Kết nối tri thức",
                    ),
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: TouchableOpacity(
                        onTap: () {
                          Get.toNamed(kAccount);
                        },
                        child: const Text(
                          "Thông tin cá nhân",
                          style: TextStyle(fontWeight: FontWeight.w600),
                        ),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.all(16.0),
                      child: Text(
                        "Quản trị chuyên mục",
                        style: TextStyle(fontWeight: FontWeight.w600),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.all(16.0),
                      child: Text(
                        "Trung tâm trợ giúp",
                        style: TextStyle(fontWeight: FontWeight.w600),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.all(16.0),
                      child: Text(
                        "Chính sách quyền riêng tư",
                        style: TextStyle(fontWeight: FontWeight.w600),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.all(16.0),
                      child: Text(
                        "Đăng xuất",
                        style: TextStyle(fontWeight: FontWeight.w600),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class TransparentPointer extends SingleChildRenderObjectWidget {
  const TransparentPointer({
    Key? key,
    this.transparent = true,
    Widget? child,
  }) : super(key: key, child: child);

  final bool transparent;

  @override
  RenderTransparentPointer createRenderObject(BuildContext context) {
    return RenderTransparentPointer(
      transparent: transparent,
    );
  }

  @override
  void updateRenderObject(
      BuildContext context, RenderTransparentPointer renderObject) {
    renderObject.transparent = transparent;
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty<bool>('transparent', transparent));
  }
}

class RenderTransparentPointer extends RenderProxyBox {
  RenderTransparentPointer({
    RenderBox? child,
    bool transparent = true,
  })  : _transparent = transparent,
        super(child);

  bool get transparent => _transparent;
  bool _transparent;

  set transparent(bool value) {
    if (value == _transparent) return;
    _transparent = value;
  }

  @override
  bool hitTest(BoxHitTestResult result, {required Offset position}) {
    // forward hits to our child:
    final hit = super.hitTest(result, position: position);
    // but report to our parent that we are not hit when `transparent` is true:
    return !transparent && hit;
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty<bool>('transparent', transparent));
  }
}
