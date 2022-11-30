import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:hoigg/pages/q&a/controller/qa_controller.dart';

import '../../../widgets/stateful_widgets/search_widget.dart';

class QnASearchView  extends GetView<QNAController>{
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Obx(() {
          return controller.showSearchWidget.value
              ? GestureDetector(
              onTap: () {
                controller.showSearch();
              },
              child: Opacity(
                  opacity: 0.6,
                  child: Container(
                      width: double.infinity,
                      height: double.infinity,
                      color: Colors.grey)))
              : const SizedBox();
        }),
        Obx(() {
          return controller.showSearchWidget.value
              ? SearchWidget(
              suggested: controller.listSuggested,
              onSubmit: (value) {
                controller.showSearch();
                controller.showDataSearch.value = true;
                print(controller.showDataSearch.value);
              })
              : const SizedBox();
        })
      ],
    );
  }

}