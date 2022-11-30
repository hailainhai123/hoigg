import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:hoigg/constants/theme.dart';
import 'package:hoigg/pages/audio/controller/audio_controller.dart';
import 'package:hoigg/utils/icon_enums.dart';

class AudioListView extends GetView<AudioController> {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        physics: const ClampingScrollPhysics(),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, crossAxisSpacing: 2, mainAxisSpacing: 8),
        itemCount: 20,
        shrinkWrap: true,
        padding: EdgeInsets.symmetric(vertical: 12),
        itemBuilder: (BuildContext context, int index) {
          return Container(
            padding: EdgeInsets.all(2),
            margin: EdgeInsets.symmetric(vertical: 2),
            child: Column(
              children: [
                Expanded(
                    child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      image: DecorationImage(
                          image: AssetImage(IconEnums.imageAudioTemple))),
                )),
                Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding:
                            const EdgeInsets.only(left: 8.0, top: 4, bottom: 4),
                        child: Text('Khởi động ngày mới',
                            style: TextStyle(
                                fontWeight: FontWeight.w700, fontSize: 14)),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: Text('Giới thiệu về cuốn sách nói này...',
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 14,
                                color: kSubTextColor)),
                      )
                    ],
                  ),
                )
              ],
            ),
          );
        });
  }
}
