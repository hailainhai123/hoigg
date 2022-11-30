import 'package:easy_autocomplete/easy_autocomplete.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hoigg/constants/theme.dart';
import 'package:hoigg/pages/q&a/widgets/dialog_delete_qna.dart';
import 'package:hoigg/pages/shopping/cart_screen/widgets/dialog_earn_coin.dart';
import 'package:hoigg/utils/styles.dart';
import 'package:hoigg/widgets/stateless_widgets/close_dialog_button.dart';
import 'package:hoigg/widgets/stateless_widgets/out_container_button.dart';
import 'package:html_editor_enhanced/html_editor.dart';

import '../../../widgets/stateful_widgets/touchable_opacity.dart';

class QNAController extends GetxController {
  HtmlEditorController controller = HtmlEditorController();
  var showSearchWidget = false.obs;
  var showDataSearch = false.obs;
  var indexButton = 0.obs;

  final List<String> listSuggested = [
    'Afeganistan',
    'Albania',
    'Algeria',
    'Australia',
    'Brazil',
    'German',
    'Madagascar',
    'Mozambique',
    'Portugal',
    'Zambia'
  ];

  void showDialogPostQuestion(BuildContext context) {
    Get.defaultDialog(
        title: "",
        titlePadding: const EdgeInsets.only(bottom: 0),
        content: SizedBox(
            width: double.maxFinite,
            child: Column(children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TouchableOpacity(
                      onTap: () {
                        Get.back();
                      },
                      child: const Padding(
                        padding: EdgeInsets.only(right: 8.0),
                        child: SizedBox(
                            height: 20, width: 20, child: Icon(Icons.close)),
                      )),
                ],
              ),
              Text('Đặt câu hỏi',
                  style: Styles.titleDiaglog
                      .copyWith(fontWeight: FontWeight.w700)),
              Container(
                height: 50,
                margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 8),
                child: EasyAutocomplete(
                    decoration: InputDecoration(
                      contentPadding: const EdgeInsets.all(0),
                      prefixIcon: const Icon(Icons.search,
                          size: 20, color: kSecondTextColor),
                      fillColor: const Color(0xff849DF8).withOpacity(0.2),
                      filled: true,
                      focusColor: Colors.blue,
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25),
                          borderSide: BorderSide.none),
                      hintText: 'Email',
                      hintStyle: const TextStyle(color: kSecondTextColor),
                      suffixIcon: const Icon(Icons.keyboard_arrow_down,
                          size: 20, color: kSecondTextColor),
                    ),
                    suggestions: listSuggested,
                    onChanged: (value) => print('onChanged value: $value'),
                    onSubmitted: (value) => print('onSubmitted value: $value')),
              ),
              HtmlEditor(
                controller: controller,
                htmlEditorOptions: const HtmlEditorOptions(
                  hint: "Bạn muốn hỏi điều gì?",
                ),
                otherOptions: const OtherOptions(
                  height: 300,
                ),
              ),
              const SizedBox(height: 16),
              RichText(
                text: const TextSpan(
                  text:
                      'Hệ thống sẽ tự đồng trừ 20 xu/ mỗi câu hỏi được duyệt.',
                  style: TextStyle(
                      color: kSubmainColor,
                      fontWeight: FontWeight.w400,
                      fontSize: 12),
                  children: <TextSpan>[
                    TextSpan(
                        text: 'kiếm xu',
                        style: TextStyle(
                            color: kSubmainColor,
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            decoration: TextDecoration.underline)),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 16.0),
                child: OutContainerButton(
                    onTap: () {
                      Get.defaultDialog(
                          title: "",
                          titlePadding: EdgeInsets.all(0),
                          content: DialogEarnCoin(
                            content: 'not_enough_coin'.tr,
                            title: "Bạn không đủ xu",
                          ));
                    },
                    textButton: "Đăng câu hỏi"),
              )
            ])));
  }

  void showSearch() {
    showSearchWidget.value = !showSearchWidget.value;
    update();
  }

  void changeIndexButton(int index) {
    indexButton.value = index;
  }

  void editQuestion(String content) {
    Get.defaultDialog(
        title: "",
        titlePadding: const EdgeInsets.only(bottom: 0),
        content: SizedBox(
            width: double.maxFinite,
            child: Column(children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TouchableOpacity(
                      onTap: () {
                        Get.back();
                      },
                      child: const Padding(
                        padding: EdgeInsets.only(right: 8.0),
                        child: SizedBox(
                            height: 20, width: 20, child: Icon(Icons.close)),
                      )),
                ],
              ),
              Text('Chỉnh sửa câu hỏi',
                  style: Styles.titleDiaglog
                      .copyWith(fontWeight: FontWeight.w700)),
              Container(
                height: 50,
                margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 8),
                child: EasyAutocomplete(
                    decoration: InputDecoration(
                      contentPadding: const EdgeInsets.all(0),
                      prefixIcon: const Icon(Icons.search,
                          size: 20, color: kSecondTextColor),
                      fillColor: const Color(0xff849DF8).withOpacity(0.2),
                      filled: true,
                      focusColor: Colors.blue,
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25),
                          borderSide: BorderSide.none),
                      hintText: 'Chọn chuyên mục',
                      hintStyle: const TextStyle(color: kSecondTextColor),
                      suffixIcon: const Icon(Icons.keyboard_arrow_down,
                          size: 20, color: kSecondTextColor),
                    ),
                    suggestions: listSuggested,
                    onChanged: (value) => print('onChanged value: $value'),
                    onSubmitted: (value) => print('onSubmitted value: $value')),
              ),
              HtmlEditor(
                controller: controller,
                htmlEditorOptions: HtmlEditorOptions(
                    // hint: "Bạn muốn hỏi điều gì?",
                    initialText: content),
                otherOptions: const OtherOptions(
                  height: 300,
                ),
              ),
              const SizedBox(height: 16),
              RichText(
                text: const TextSpan(
                  text:
                      'Hệ thống sẽ tự đồng trừ 20 xu/ mỗi câu hỏi được duyệt.',
                  style: TextStyle(
                      color: kSubmainColor,
                      fontWeight: FontWeight.w400,
                      fontSize: 12),
                  children: <TextSpan>[
                    TextSpan(
                        text: 'kiếm xu',
                        style: TextStyle(
                            color: kSubmainColor,
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            decoration: TextDecoration.underline)),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 16.0),
                child: OutContainerButton(
                    onTap: () {}, textButton: "Cập nhật câu hỏi"),
              )
            ])));
  }

  void deleteQnA() {
    Get.defaultDialog(
        title: "",
        titlePadding: const EdgeInsets.all(0),
        content: const DialogDeleteQnA());
  }

  void showAnserDialog() {
    Get.defaultDialog(
        title: "",
        titlePadding: const EdgeInsets.only(bottom: 0),
        content: SizedBox(
            width: double.maxFinite,
            child: Column(children: [
              DialogCloseButton(),
              Text('Trả lời câu hỏi',
                  style: Styles.titleDiaglog
                      .copyWith(fontWeight: FontWeight.w700)),
              const SizedBox(height: 16),
              HtmlEditor(
                controller: controller,
                htmlEditorOptions: const HtmlEditorOptions(
                  hint: "Nhập câu trả lời của bạn tại đây",
                ),
                otherOptions: const OtherOptions(
                  height: 300,
                ),
              ),
              const SizedBox(height: 16),
              Padding(
                padding: const EdgeInsets.only(top: 16.0),
                child: OutContainerButton(
                    onTap: () {}, textButton: "Gửi câu trả lời"),
              )
            ])));
  }
}
