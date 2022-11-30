import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:hoigg/pages/shopping/controller/shopping_controller.dart';

import 'item_shopping.dart';

class ListProductsWidget extends GetView<ShoppingController> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Expanded(
      child: Obx(() {
        return RefreshIndicator(
          onRefresh: () async {
            controller.refreshList();
          },
          child: GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                childAspectRatio: 158 / 310,
                crossAxisCount: 2,
                crossAxisSpacing: 6,
                mainAxisSpacing: 2),
            itemCount: controller.items.length,
            shrinkWrap: true,
            controller: controller.scrollController,
            itemBuilder: (context, index) {
              return Container(
                width: double.infinity,
                margin: const EdgeInsets.only(bottom: 8),
                child: ItemShopping(
                    product: controller.items[index],
                    width: size.width / 2 - 20),
              );
            },
          ),
        );
      }),
    );
  }
}
