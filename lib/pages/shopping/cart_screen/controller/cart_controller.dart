import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../../../../models/product_shop.dart';

class CartController extends GetxController {
  final ScrollController scrollController = ScrollController();
  var items = <ProductShop>[].obs;
  var baseItems = <ProductShop>[].obs;
  var totalPrices = 0.obs;

  void addProduct(ProductShop data, int count) {
    if (items.isEmpty) {
      data.countInCart = count;
      totalPrices.value = count * data.price;
      items.add(data);
      baseItems.add(data);
      return;
    }
    print('dzo day');
    for (int i = 0; i < items.length; i++) {
      if (baseItems[i] == data) {
        items[i].countInCart = items[i].countInCart + count;
        totalPrices.value = items[i].countInCart * data.price;
        return;
      }
    }
    print('cong them item');
    items.add(data);
    baseItems.add(data);
    totalPrices.value = totalPrices.value + count * data.price;
  }

  void updateCountInCart(ProductShop data, int count) {
    for (var item in items) {
      if (item == data) {
        totalPrices.value =  totalPrices.value - item.countInCart * data.price;
        item.countInCart = count;
        totalPrices.value = totalPrices.value + item.countInCart * data.price;
        return;
      }
    }
    update();
  }

  int getTotalPrice(){
    for(var item in items){
      totalPrices.value = item.countInCart * item.price ;
    }
    return totalPrices.value;
  }
}
