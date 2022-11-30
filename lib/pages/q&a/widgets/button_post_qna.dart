import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:hoigg/pages/q&a/controller/qa_controller.dart';

import '../../../constants/theme.dart';
import '../../../utils/icon_enums.dart';
import '../../../utils/styles.dart';
import '../../../widgets/stateless_widgets/out_container_button.dart';

class ButtonPost extends GetView<QNAController> {
  const ButtonPost({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return controller.showDataSearch.value
          ? const SizedBox()
          : controller.indexButton.value == 1 ||
                  controller.indexButton.value == 2
              ? RichText(
                  text: const TextSpan(
                    text: 'Tổng: ',
                    style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 16,
                        color: Colors.black),
                    children: <TextSpan>[
                      TextSpan(
                          text: '1.239 câu hỏi',
                          style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 16,
                              color: kSecondTextColor)),
                    ],
                  ),
                )
              : controller.indexButton.value == 3
                  ? const SizedBox()
                  : OutContainerButton(
                      backgroundColor: kSubmainColor,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SvgPicture.asset(IconEnums.iconPostQnA),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text('Đăng câu hỏi',
                                style: Styles.styleTextButton.copyWith(
                                    color: Colors.white,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600)),
                          ),
                        ],
                      ),
                      onTap: () {
                        controller.showDialogPostQuestion(context);
                      });
    });
  }
}
