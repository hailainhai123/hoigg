import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hoigg/pages/audio/controller/audio_controller.dart';
import 'package:hoigg/pages/audio/player/player_audio.dart';
import 'package:hoigg/pages/audio/widgets/recommend_widget.dart';

import '../../../constants/theme.dart';
import '../../../utils/icon_enums.dart';
import '../../../widgets/stateful_widgets/search_field_widget.dart';
import '../../../widgets/stateless_widgets/custom_appbar.dart';
import '../../shopping/widgets/dropdown_app.dart';
import '../audio_page.dart';
import 'list_audio.dart';

class InstrumentalMusic extends GetView<AudioController> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      bottomNavigationBar: AudioPlayerApp(),
      body: SafeArea(
        child: Container(
            // margin: const EdgeInsets.only(bottom: 56),
            color: const Color(0xffd0d5ff),
            child: Column(children: [
              CustomAppbar(
                showBackIcon: true,
                title: "Nhạc không lời",
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
                                    hint: 'Nhạc không lời',
                                    items: ['Nhạc không lời'],
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
                          Expanded(
                            child: Container(
                              margin: EdgeInsets.only(top: 16),
                              child: Column(
                                children: [
                                  SizedBox(
                                    width: size.width,
                                    height: 120,
                                    child: Row(
                                      children: [
                                        Container(
                                          height: 120,
                                          width: 120,
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(8),
                                              image: DecorationImage(
                                                  image: AssetImage(IconEnums
                                                      .imageAudioTemple),
                                                  fit: BoxFit.cover)),
                                        ),
                                        Expanded(
                                          child: Container(
                                            height: 120,
                                            padding: EdgeInsets.symmetric(
                                                horizontal: 8),
                                            child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text('Bếp hát',
                                                    style: TextStyle(
                                                        fontSize: 16,
                                                        fontWeight:
                                                            FontWeight.w700)),
                                                Text('Cập nhật: 02/06/2021',
                                                    style: TextStyle(
                                                        fontSize: 13,
                                                        fontWeight:
                                                            FontWeight.w400,
                                                        color:
                                                            Color(0xff75818f))),
                                                Text(
                                                    'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the ',
                                                    style: TextStyle(
                                                        fontSize: 13,
                                                        fontWeight:
                                                            FontWeight.w400))
                                              ],
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                  Expanded(
                                      child: Container(
                                    margin: const EdgeInsets.only(top: 16),
                                    child: ListView.separated(
                                      physics: const ClampingScrollPhysics(),
                                      itemCount: 30,
                                      itemBuilder: (context, index) {
                                        return ListTile(
                                          title: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Icon(Icons.queue_music),
                                              Text(
                                                  'I will Go To You Like The Fi.....'),
                                              Text('03:35')
                                            ],
                                          ),
                                        );
                                      },
                                      separatorBuilder:
                                          (BuildContext context, int index) {
                                        return Divider();
                                      },
                                    ),
                                  ))
                                ],
                              ),
                            ),
                          ),
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
