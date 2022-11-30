import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:hoigg/constants/theme.dart';
import 'package:hoigg/pages/q&a/controller/qa_controller.dart';
import 'package:hoigg/pages/q&a/q&a_answer/qna_asked.dart';
import 'package:hoigg/pages/q&a/widgets/button_post_qna.dart';
import 'package:hoigg/pages/q&a/widgets/list_qna_widget.dart';
import 'package:hoigg/pages/q&a/widgets/search_view_qna.dart';
import 'package:hoigg/pages/q&a/widgets/top_button_qna.dart';
import 'package:hoigg/utils/styles.dart';
import 'package:hoigg/widgets/stateless_widgets/out_container_button.dart';

import '../../utils/icon_enums.dart';
import '../../widgets/stateful_widgets/search_widget.dart';
import '../../widgets/stateless_widgets/custom_appbar.dart';

class QNAPage extends GetView<QNAController> {
  const QNAPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final QNAController controller = Get.put(QNAController());
    return SafeArea(child: Stack(children: [
      Container(
        color: const Color(0xffEDE6F5),
        padding: const EdgeInsets.all(16),
        margin: marginBottom,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomAppbar(
              onTapRight: () {
                controller.showSearch();
              },
              title: "Góc hỏi đáp",
              iconRight: const Icon(Icons.search, color: Colors.black),
            ),
            const HeaderQNAWidget(),
            const ButtonPost(),
            Obx(() {
              bool isShowDefault = controller.indexButton.value == 3 ||
                  controller.indexButton.value == 0;
              return isShowDefault ? QnAListWidget() : const QnAAsked();
            })
          ],
        ),
      ),
      QnASearchView()
    ]));
  }
}
