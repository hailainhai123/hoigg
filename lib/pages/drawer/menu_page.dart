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
                              child: Text("L???p 9"),
                            ),
                            DropdownMenuItem(
                              value: "2",
                              child: Text("L???p 10"),
                            ),
                          ],
                        ),
                      );
                    }),
                    const DrawerMenuTile(
                      title: "Chuy??n m???c",
                    ),
                    const DrawerMenuTile(
                      title: "Ch????ng tr??nh hi???n t???i",
                    ),
                    const DrawerMenuTile(
                      title: "Ch??n tr???i s??ng t???o",
                    ),
                    const DrawerMenuTile(
                      title: "C??nh di???u",
                    ),
                    const DrawerMenuTile(
                      title: "K???t n???i tri th???c",
                    ),
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: TouchableOpacity(
                        onTap: () {
                          Get.toNamed(kAccount);
                        },
                        child: const Text(
                          "Th??ng tin c?? nh??n",
                          style: TextStyle(fontWeight: FontWeight.w600),
                        ),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.all(16.0),
                      child: Text(
                        "Qu???n tr??? chuy??n m???c",
                        style: TextStyle(fontWeight: FontWeight.w600),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.all(16.0),
                      child: Text(
                        "Trung t??m tr??? gi??p",
                        style: TextStyle(fontWeight: FontWeight.w600),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.all(16.0),
                      child: Text(
                        "Ch??nh s??ch quy???n ri??ng t??",
                        style: TextStyle(fontWeight: FontWeight.w600),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.all(16.0),
                      child: Text(
                        "????ng xu???t",
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
