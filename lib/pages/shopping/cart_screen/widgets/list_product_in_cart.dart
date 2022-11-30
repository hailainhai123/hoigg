import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:hoigg/pages/shopping/cart_screen/controller/cart_controller.dart';

import '../../widgets/item_shopping.dart';

class ListProductsInCartWidget extends GetView<CartController> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Expanded(
      child: Obx(() {
        return RefreshIndicator(
          onRefresh: () async {
            // controller.refreshList();
          },
          child: GridView.builder(
            physics: const ClampingScrollPhysics(),
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
