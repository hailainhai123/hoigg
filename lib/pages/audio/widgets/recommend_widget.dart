import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:hoigg/pages/audio/controller/audio_controller.dart';

import 'list_audio.dart';

class RecommendWidget extends GetView<AudioController> {
  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(maxHeight: 600),
      margin: const EdgeInsets.all(16),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(14),
          color: controller.showChoosePageWidget.value
              ? Color(0xffF6F6F6)
              : Colors.white),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text('Có thể bạn muốn nghe',
                style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 16,
                    color: Color(0xff060728))),
          ),
          // AudioListView(),
          Expanded(child: AudioListView()),
          const SizedBox(height: 8),
        ],
      ),
    );
  }
}
