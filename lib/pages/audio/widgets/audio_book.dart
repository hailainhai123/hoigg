// import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hoigg/pages/audio/controller/audio_controller.dart';
import 'package:hoigg/pages/audio/widgets/recommend_widget.dart';
// import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';

import '../../../constants/theme.dart';
import '../../../widgets/stateful_widgets/search_field_widget.dart';
import '../../../widgets/stateless_widgets/custom_appbar.dart';
import '../../shopping/cart_screen/cart_screen.dart';
import '../../shopping/widgets/dropdown_app.dart';
import '../audio_page.dart';
import 'list_audio.dart';

class AudioBook extends GetView<AudioController> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: SafeArea(
        child: Container(
            margin: const EdgeInsets.only(bottom: 56),
            color: const Color(0xffd0d5ff),
            child: Column(children: [
              CustomAppbar(
                showBackIcon: true,
                title: "Sách nói",
              ),
              const Padding(
                  padding: EdgeInsets.symmetric(vertical: 16.0),
                  child: SearchFieldWidget()),
              Expanded(
                  child: SingleChildScrollView(
                child: Column(
                  children: [
                    Container(
                      constraints: BoxConstraints(maxHeight: 600),
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
                          // AudioListView(),
                          Container(
                            child: Expanded(child: AudioListView()),
                          ),
                          const SizedBox(height: 8),
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
                                            borderRadius:
                                                BorderRadius.circular(15)),
                                        child: Center(
                                            child: Icon(Icons
                                                .navigate_before_outlined)),
                                      ),
                                      Container(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 16),
                                        child: Row(
                                          children: [
                                            SizedBox(
                                              height: 30,
                                              width: 30,
                                              child: TextFormField(
                                                style: TextStyle(
                                                    fontSize: 14,
                                                    color: kSecondTextColor,
                                                    fontWeight:
                                                        FontWeight.w400),
                                                controller:
                                                    controller.pageController,
                                                keyboardType:
                                                    TextInputType.number,
                                                textInputAction:
                                                    TextInputAction.next,
                                                onFieldSubmitted: (_) {},
                                                validator: (value) {},
                                                decoration: CommonStyle
                                                    .textFieldStyle(),
                                              ),
                                            ),
                                            Padding(
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                      horizontal: 4.0),
                                              child: Text(
                                                  '/ ${controller.page}',
                                                  style: TextStyle(
                                                      fontSize: 14,
                                                      fontWeight:
                                                          FontWeight.w400)),
                                            )
                                          ],
                                        ),
                                      ),
                                      Container(
                                        width: 30,
                                        height: 30,
                                        decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius:
                                                BorderRadius.circular(15)),
                                        child: Center(
                                            child: Icon(
                                                Icons.navigate_next_outlined)),
                                      )
                                    ],
                                  )
                                : SizedBox();
                          }),
                        ],
                      ),
                    ),
                    RecommendWidget()
                  ],
                ),
              ))
            ])),
      ),
    );
  }
}
