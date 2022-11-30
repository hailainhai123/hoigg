import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hoigg/pages/q&a/controller/qa_controller.dart';
import 'package:hoigg/widgets/stateful_widgets/touchable_opacity.dart';

import '../../../utils/styles.dart';
import '../../../widgets/stateless_widgets/dotted_line.dart';

class HeaderQNAWidget extends GetView<QNAController> {
  const HeaderQNAWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      margin: const EdgeInsets.symmetric(vertical: 8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: Colors.white,
      ),
      child: Row(
        children: [
          Expanded(
            child: TouchableOpacity(
              onTap: () {
                if (controller.indexButton.value == 1) {
                  controller.changeIndexButton(0);
                } else {
                  controller.changeIndexButton(1);
                }
              },
              child: Obx(() {
                return Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: controller.indexButton.value == 1
                          ? const Color(0xffeb8195)
                          : Colors.white,
                    ),
                    margin:
                        const EdgeInsets.symmetric(vertical: 6, horizontal: 12),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Câu đã hỏi',
                              style: Styles.styleTextButton.copyWith(
                                  color: controller.indexButton.value == 1
                                      ? Colors.white
                                      : Colors.black))
                        ]));
              }),
            ),
          ),
          SizedBox(
              height: 40,
              width: 2,
              child:
                  DottedLine(color: const Color(0xff849DF8).withOpacity(0.2))),
          Expanded(
              child: TouchableOpacity(onTap: () {
            if (controller.indexButton.value == 2) {
              controller.changeIndexButton(0);
            } else {
              controller.changeIndexButton(2);
            }
          }, child: Obx(() {
            return Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: controller.indexButton.value == 2
                      ? const Color(0xffeb8195)
                      : Colors.white,
                ),
                margin: const EdgeInsets.symmetric(vertical: 6, horizontal: 12),
                child: Center(
                    child: Text('Câu đã trả lời',
                        style: Styles.styleTextButton.copyWith(
                            color: controller.indexButton.value == 2
                                ? Colors.white
                                : Colors.black))));
          }))),
          SizedBox(
              height: 40,
              width: 2,
              child:
                  DottedLine(color: const Color(0xff849DF8).withOpacity(0.2))),
          Expanded(
              child: TouchableOpacity(
            onTap: () {
              if (controller.indexButton.value == 3) {
                controller.changeIndexButton(0);
              } else {
                controller.changeIndexButton(3);
              }
            },
            child: Obx(() {
              return Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: controller.indexButton.value == 3
                        ? const Color(0xffeb8195)
                        : Colors.white,
                  ),
                  margin:
                      const EdgeInsets.symmetric(vertical: 6, horizontal: 12),
                  child: Center(
                      child: Text('Chờ xét duyệt',
                          style: Styles.styleTextButton.copyWith(
                              color: controller.indexButton.value == 3
                                  ? Colors.white
                                  : Colors.black))));
            }),
          )),
        ],
      ),
    );
  }
}
