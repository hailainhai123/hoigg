import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../models/product_shop.dart';

class ShoppingController extends GetxController {
  var isLoadMore = false.obs;
  final ScrollController scrollController = ScrollController();

  var listSuggeted = [
    'Bút bi',
    'Bút mực',
    'Sách',
    'Thước kẻ',
    'Bút chì kim',
    'Compa',
    'Eke'
  ];

  // ProductShop data = ProductShop(
  //     id: '0',
  //     urlImage: "",
  //     name:
  //         "GÔM Pentel, Cục tẩy Pental, Tẩy bút chì Pentel, Gôm tẩy Pentel (5 cục)",
  //     price: 50,
  //     salePercent: 30,
  //     starRate: 4.9,
  //     listColorProduct: [Colors.red, Colors.blueAccent, Colors.white]);

  var items = <ProductShop>[].obs;

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    refreshList();
    scrollController.addListener(() {
      print(
          scrollController.offset >= scrollController.position.maxScrollExtent);
      if (scrollController.offset >=
          scrollController.position.maxScrollExtent) {
        if (isLoadMore.value) return;
        loadMoreProduct();
      }
    });
  }

  void refreshList() async {
    items.value = [];
    for (int i = 0; i < 6; i++) {
      ProductShop p = ProductShop(
          id: i.toString(),
          urlImage: "",
          name:
              "GÔM Pentel, Cục tẩy Pental, Tẩy bút chì Pentel, Gôm tẩy Pentel (5 cục)",
          price: 50,
          salePercent: 30,
          starRate: 4.9,
          countInCart: 0,
          listColorProduct: [Colors.red, Colors.blueAccent, Colors.white]);
      items.add(p);
    }
    update();
  }

  void loadMoreProduct() async {
    print('Load more');
    isLoadMore.value = true;
    for (int i = 0; i < 6; i++) {
      ProductShop p = ProductShop(
          id: i.toString(),
          urlImage: "",
          name:
              "GÔM Pentel, Cục tẩy Pental, Tẩy bút chì Pentel, Gôm tẩy Pentel (5 cục)",
          price: 50,
          salePercent: 30,
          starRate: 4.9,
          countInCart: 0,
          listColorProduct: [Colors.red, Colors.blueAccent, Colors.white]);
      items.add(p);
    }
    update();
    isLoadMore.value = false;
  }

  void refreshProduct() async {
    refreshList();
  }
}
