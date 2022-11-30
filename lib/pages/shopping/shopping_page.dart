import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:hoigg/pages/shopping/cart_screen/cart_screen.dart';
import 'package:hoigg/pages/shopping/widgets/filter_row.dart';
import 'package:hoigg/pages/shopping/widgets/item_shopping.dart';
import 'package:hoigg/pages/shopping/widgets/list_products_widget.dart';
import 'package:hoigg/pages/shopping/widgets/suggested_products.dart';
import 'package:hoigg/widgets/card/shopping_appbar.dart';

import '../../widgets/main_app_bar.dart';
import '../../widgets/stateful_widgets/inifini_list_view.dart';
import '../../widgets/stateful_widgets/search_field_widget.dart';
import '../../widgets/stateless_widgets/custom_appbar.dart';
import 'controller/shopping_controller.dart';
// import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';

class ShoppingPage extends GetView<ShoppingController> {
  const ShoppingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(ShoppingController());
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: shoppingAppbar,
      body: Column(
        children: [
          SizedBox(height: 8),
          SuggestedProducts(items: controller.listSuggeted),
          const ShopFilterRow(),
          ListProductsWidget()
        ],
      ),
    );
  }
}
