import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:hoigg/constants/theme.dart';
import 'package:hoigg/pages/shopping/cart_screen/controller/cart_controller.dart';
import 'package:hoigg/pages/shopping/cart_screen/widgets/dialog_earn_coin.dart';
import 'package:hoigg/pages/shopping/cart_screen/widgets/info_ship.dart';
import 'package:hoigg/pages/shopping/cart_screen/widgets/list_product_in_cart.dart';
import 'package:hoigg/widgets/stateless_widgets/out_container_button.dart';

import '../../../widgets/primaryElevatedButton.dart';
import '../../../widgets/stateful_widgets/search_field_widget.dart';
import '../../../widgets/stateless_widgets/custom_appbar.dart';
import '../widgets/filter_row.dart';
import '../widgets/list_products_widget.dart';

class CartScreen extends GetView<CartController> {
  const CartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(CartController());
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: SafeArea(
        child: Container(
          margin: const EdgeInsets.only(bottom: 56),
          color: Colors.white,
          child: Column(
            children: [
              CustomAppbar(
                showBackIcon: true,
                title: "Giỏ hàng",
                iconRight:
                    const Icon(Icons.shopping_cart, color: Colors.blueAccent),
              ),
              const SearchFieldWidget(),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                margin: const EdgeInsets.symmetric(vertical: 8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Obx(
                      () => Text(
                          'Tổng thanh toán (${controller.items.length} sản phẩm): ${controller.totalPrices.value} xu'),
                    ),
                    SizedBox(
                      width: 120,
                      height: 40,
                      child: PrimaryElevatedButton(
                        onClick: () {
                          Get.defaultDialog(
                              contentPadding:
                                  const EdgeInsets.symmetric(horizontal: 16),

                              title: '',
                              // content: const DialogEarnCoin(title: 'Bạn không đủ xu'));
                              content: const FormInfoShip(
                                  title: 'Thông tin nhận hàng'));
                        },
                        child: const Text('Mua ngay',
                            style: TextStyle(color: Colors.white)),
                      ),
                    )
                  ],
                ),
              ),
              const ShopFilterRow(),
              ListProductsInCartWidget()
            ],
          ),
        ),
      ),
    );
  }
}
