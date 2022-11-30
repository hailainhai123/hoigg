import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hoigg/constants/theme.dart';
import 'package:hoigg/pages/q&a/controller/qa_controller.dart';
import 'package:hoigg/pages/q&a/widgets/item_pending.dart';
import 'package:hoigg/pages/q&a/widgets/item_qna.dart';
import 'package:hoigg/pages/shopping/widgets/dropdown_app.dart';

class QnAListWidget extends GetView<QNAController> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Container(
      margin: const EdgeInsets.only(top: 8),
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: Colors.white,
          boxShadow: const [
            BoxShadow(
                color: Colors.grey,
                blurRadius: 2,
                spreadRadius: 2,
                offset: Offset(1, 4))
          ]),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Obx(() {
            return controller.showDataSearch.value
                ? SizedBox(
                    child: RichText(
                    text: const TextSpan(
                      text: 'Kết quả tìm kiếm: ',
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
                  ))
                : SizedBox(
                    height: 50,
                    width: double.infinity,
                    child: Row(
                      children: [
                        Expanded(
                            child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: const Color(0xffE4E9FF),
                          ),
                          child: DropdownApp(
                            items: ['Trạng thái câu hỏi', 'yui', 'akw', 'soqu'],
                            height: 40,
                            textColor: const Color(0xff5365FD),
                            icon: const Icon(
                              Icons.keyboard_arrow_down,
                              color: Color(0xff5365FD),
                            ),
                          ),
                        )),
                        const SizedBox(width: 16),
                        Expanded(
                            child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: Color(0xffE4E9FF),
                          ),
                          child: DropdownApp(
                              items: ['Danh mục', 'yui', 'akw', 'soqu'],
                              height: 40,
                              textColor: const Color(0xff5365FD),
                              icon: const Icon(
                                Icons.keyboard_arrow_down,
                                color: Color(0xff5365FD),
                              )),
                        )),
                      ],
                    ),
                  );
          }),
          Expanded(
            child: ListView.builder(
                physics: const ClampingScrollPhysics(),
                itemCount: 10,
                itemBuilder: (context, index) {
                  return Obx(() {
                    return controller.indexButton.value == 3
                        ? const ItemPendingQnA()
                        : ItemQnA();
                  });
                }),
          )
        ],
      ),
    ));
  }
}
