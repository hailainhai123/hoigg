// import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hoigg/widgets/stateful_widgets/touchable_opacity.dart';

import '../../../../constants/theme.dart';
import '../../../../widgets/stateless_widgets/out_container_button.dart';

class DialogEarnCoin extends StatelessWidget {
  final String? title;
  final String? content;

  const DialogEarnCoin({Key? key, this.title, this.content}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.red,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              TouchableOpacity(
                  onTap: () {
                    Get.back();
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(right: 8.0),
                    child: SizedBox(
                        height: 20, width: 20, child: Icon(Icons.close)),
                  )),
            ],
          ),
          Text(title ?? "",
              style: const TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 18,
                  color: Color(0xff5365FD))),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 16),
            child: Text(
                content ??
                    'Bạn không đủ Xu để thanh toán đơn hàng này. Vui lòng làm nhiệm vụ hoặc nạp xu để mua hàng',
                textAlign: TextAlign.center),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Expanded(
                child: OutContainerButton(
                  textButton: 'Làm nhiệm vụ',
                  backgroundColor: kSubmainColor,
                  onTap: () {
                    Get.back();
                  },
                ),
              ),
              const SizedBox(width: 16),
              Expanded(
                child: OutContainerButton(
                  textButton: 'Nạp xu',
                  gradient: const LinearGradient(
                    colors: [
                      Color(0xFF6A79FD),
                      Color(0xFF849DF8),
                    ],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  ),
                  onTap: () {
                    Get.back();
                  },
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
