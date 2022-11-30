import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hoigg/constants/theme.dart';
import 'package:hoigg/pages/shopping/controller/shopping_controller.dart';
import 'package:hoigg/pages/shopping/widgets/dropdown_app.dart';
import 'package:hoigg/utils/app_color.dart';

class ShopFilterRow extends GetView<ShoppingController> {
  const ShopFilterRow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      padding: EdgeInsets.symmetric(horizontal: 8),
      // color: AppColors.kColorForDesign,
      child: Row(
        children: [
          Expanded(child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: const [
              Icon(Icons.filter_list, color: kMainColor),
              Icon(Icons.filter_list_alt, color: kMainColor),
            ],
          )),
          Expanded(
            child: DropdownApp(items: const ['Phù hợp nhât', 'Abc', 'ABC'])
          ),
          const SizedBox(width: 4),
          Expanded(
              child: DropdownApp(items: const ['Giá', 'Tăng dần', 'Giảm dần'])
          ),
          const SizedBox(width: 4),
        ],
      ),
    );
  }
}
