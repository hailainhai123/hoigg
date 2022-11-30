import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:hoigg/constants/theme.dart';
import 'package:hoigg/pages/audio/controller/audio_controller.dart';
import 'package:hoigg/pages/audio/widgets/audio_book.dart';
import 'package:hoigg/pages/audio/widgets/instrumental_music.dart';
import 'package:hoigg/pages/audio/widgets/list_audio.dart';
import 'package:hoigg/pages/shopping/cart_screen/cart_screen.dart';
import 'package:hoigg/pages/shopping/widgets/filter_row.dart';
import 'package:hoigg/pages/shopping/widgets/item_shopping.dart';
import 'package:hoigg/pages/shopping/widgets/list_products_widget.dart';
import 'package:hoigg/pages/shopping/widgets/suggested_products.dart';

import '../../widgets/stateful_widgets/inifini_list_view.dart';
import '../../widgets/stateful_widgets/search_field_widget.dart';
import '../../widgets/stateless_widgets/custom_appbar.dart';

// import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';

import '../shopping/widgets/dropdown_app.dart';

class AudioPage extends GetView<AudioController> {
  const AudioPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(AudioController());
    Size size = MediaQuery.of(context).size;

    return SafeArea(
      child: Container(
        margin: const EdgeInsets.only(bottom: 56),
        color: const Color(0xffd0d5ff),
        child: Column(
          children: [
            CustomAppbar(
              title: "Audio",
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 16.0),
              child: SearchFieldWidget(),
            ),
            Obx(() {
              return Expanded(
                  child: Container(
                margin: const EdgeInsets.all(16),
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(14),
                    color: controller.showChoosePageWidget.value
                        ? Color(0xffF6F6F6)
                        : Colors.white),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: const Color(0xffE4E9FF),
                            ),
                            child: DropdownApp(
                              onSave: (value) {
                                print(value);
                                if (value == "Nhạc không lời") {
                                  // pushNewScreen(
                                  //   context,
                                  //   screen: InstrumentalMusic(),
                                  //   withNavBar: true,
                                  //   // OPTIONAL VALUE. True by default.
                                  //   pageTransitionAnimation:
                                  //       PageTransitionAnimation.cupertino,
                                  // );
                                } else {
                                  // pushNewScreen(
                                  //   context,
                                  //   screen: AudioBook(),
                                  //   withNavBar: true,
                                  //   // OPTIONAL VALUE. True by default.
                                  //   pageTransitionAnimation:
                                  //       PageTransitionAnimation.cupertino,
                                  // );
                                }
                              },
                              hint: 'Chọn loại',
                              items: ['Nhạc không lời', 'Sách nói'],
                              height: 40,
                              textColor: const Color(0xff5365FD),
                              icon: const Icon(
                                Icons.keyboard_arrow_down,
                                color: Color(0xff5365FD),
                              ),
                            ),
                          ),
                        ),
                        Expanded(child: Container())
                      ],
                    ),
                    Expanded(child: AudioListView()),
                    SizedBox(height: 8),
                    Obx(() {
                      return controller.showChoosePageWidget.value
                          ? Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  width: 30,
                                  height: 30,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(15)),
                                  child: Center(
                                      child:
                                          Icon(Icons.navigate_before_outlined)),
                                ),
                                Container(
                                  padding: EdgeInsets.symmetric(horizontal: 16),
                                  child: Row(
                                    children: [
                                      SizedBox(
                                        height: 30,
                                        width: 30,
                                        child: TextFormField(
                                          style: TextStyle(
                                              fontSize: 14,
                                              color: kSecondTextColor,
                                              fontWeight: FontWeight.w400),
                                          controller: controller.pageController,
                                          keyboardType: TextInputType.number,
                                          textInputAction: TextInputAction.next,
                                          onFieldSubmitted: (_) {},
                                          validator: (value) {},
                                          decoration:
                                              CommonStyle.textFieldStyle(),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 4.0),
                                        child: Text('/ ${controller.page}',
                                            style: TextStyle(
                                                fontSize: 14,
                                                fontWeight: FontWeight.w400)),
                                      )
                                    ],
                                  ),
                                ),
                                Container(
                                  width: 30,
                                  height: 30,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(15)),
                                  child: Center(
                                      child:
                                          Icon(Icons.navigate_next_outlined)),
                                )
                              ],
                            )
                          : SizedBox();
                    }),
                  ],
                ),
              ));
            })
          ],
        ),
      ),
    );
  }
}

class CommonStyle {
  static InputDecoration textFieldStyle() {
    return InputDecoration(
      contentPadding: EdgeInsets.symmetric(vertical: 8, horizontal: 11),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(0),
      ),
    );
  }
}
