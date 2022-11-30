// import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hoigg/constants/theme.dart';
import 'package:hoigg/utils/styles.dart';
import 'package:hoigg/widgets/stateless_widgets/out_container_button.dart';

class FormInfoShip extends StatelessWidget {
  final String? title;

  const FormInfoShip({Key? key, this.title}) : super(key: key);

  // import 'package:flutter/cupertino.dart';

  @override
  Widget build(BuildContext context) {
    double widthDialog = MediaQuery.of(context).size.width - 16;
    return Container(
      // color: Colors.red,
      width: double.maxFinite,
      child: Column(
        children: [
          Text(title ?? "", style: Styles.titleDiaglog),
          SizedBox(height: 16),
          TextFormField(
            decoration: InputDecoration(
              label: Text('Họ và tên'),
            ),
          ),
          SizedBox(height: 8),
          TextFormField(
            decoration: InputDecoration(label: Text('SĐT')),
          ),
          SizedBox(height: 8),
          TextFormField(
            decoration: InputDecoration(label: Text('Địa chỉ')),
          ),
          SizedBox(height: 8),
          OutContainerButton(
              textButton: 'Thanh toán',
              onTap: () {
                Get.back();
                Get.defaultDialog(
                  title: "",
                  content: Column(
                    children: [
                      Text('Thanh toán thành công', style: Styles.titleDiaglog),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 24.0),
                        child: Text('Bạn đã đặt đơn hàng thành công'),
                      ),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Expanded(
                                child: OutContainerButton(
                                    textButton: 'Quay lại',
                                    onTap: () {
                                      Get.back();
                                    },
                                    backgroundColor: kSubmainColor)),
                            SizedBox(width: 8),
                            Expanded(
                                child: OutContainerButton(
                                    textButton: 'Mua hàng tiếp',
                                    onTap: () {
                                      Get.back();
                                    })),
                          ]),
                    ],
                  ),
                );
              })
        ],
      ),
    );
  }
}
