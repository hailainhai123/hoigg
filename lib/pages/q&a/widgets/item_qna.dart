import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:hoigg/constants/theme.dart';
import 'package:hoigg/pages/q&a/controller/qa_controller.dart';
import 'package:hoigg/widgets/stateful_widgets/touchable_opacity.dart';

import '../../../widgets/custom_circle_avatar.dart';

class ItemQnA extends GetView<QNAController> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      margin: EdgeInsets.symmetric(vertical: 4),
      padding: EdgeInsets.all(16),
      width: double.infinity,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(4), color: Color(0xffF1F3FC)),
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 20, width: 20, child: CustomCircleAvatar(onClick: (){})),
              Expanded(
                child: Column(
                  children: [
                    Row(
                      children: [
                        Expanded(
                            child: Container(
                          margin: EdgeInsets.only(left: 8),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Text('Hanhlth',
                                      style: TextStyle(
                                          fontWeight: FontWeight.w600,
                                          color: Color(0xffF196A7),
                                          fontSize: 11)),
                                  Text('>   '),
                                  Flexible(
                                      child: Text('Khoa học tự nhiên',
                                          maxLines: 2,
                                          style: TextStyle(
                                              fontWeight: FontWeight.w600,
                                              color: Color(0xffF196A7),
                                              fontSize: 11)))
                                ],
                              ),
                              Text('Vừa xong',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 10)),
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 8.0, right: 8),
                                child: Text(
                                    'Tam giác ABC có đáy BC bằng 36dm. Nếu giảm đáy BC 1,2m thì diện tích. Tam giác ABC có đáy BC bằng 36dm. Nếu giảm đáy BC 1,2m thì diện tích',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 11,
                                        color: Color(0xff75818F))),
                              )
                            ],
                          ),
                        )),
                        SizedBox(width: 4),
                        Container(
                          constraints: BoxConstraints(
                              minWidth: 0, maxWidth: size.width * 120 / 375),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Container(
                                height: size.width * 58 / 375,
                                width: size.width * 58 / 375,
                                padding: const EdgeInsets.all(3),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  image: const DecorationImage(
                                    image: NetworkImage(
                                        'https://picsum.photos/seed/picsum/300/300'),
                                  ),
                                ),
                              ),
                              Stack(children: [
                                Container(
                                  height: size.width * 58 / 375,
                                  width: size.width * 58 / 375,
                                  padding: const EdgeInsets.all(3),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    image: const DecorationImage(
                                      image: NetworkImage(
                                          'https://picsum.photos/seed/picsum/300/300'),
                                    ),
                                  ),
                                ),
                                Container(
                                  height: size.width * 58 / 375,
                                  width: size.width * 58 / 375,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    color: Colors.black.withOpacity(0.4),
                                  ),
                                  child: const Center(
                                    child: Text('+4',
                                        style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w700,
                                            color: Colors.white)),
                                  ),
                                ),
                              ])
                            ],
                          ),
                        )
                      ],
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        TouchableOpacity(
                          onTap: (){
                            controller.showAnserDialog();
                          },
                          child: Container(
                            height: 24,
                            margin: EdgeInsets.only(top: 16),
                            padding: EdgeInsets.symmetric(horizontal: 16),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(12),
                                border: Border.all(color: Color(0xff5365FD))),
                            child: Center(
                                child: Text('Trả lời',
                                    style: TextStyle(
                                        color: kSecondTextColor,
                                        fontSize: 11,
                                        fontWeight: FontWeight.w600))),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 16),
                          constraints: BoxConstraints(maxWidth: 72),
                          child: Stack(
                            children: [
                              Container(
                                width: 24,
                                height: 24,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(12),
                                    image: DecorationImage(
                                        image: AssetImage(
                                            "assets/images/temple_image.png"),
                                        fit: BoxFit.fill)),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 14.0),
                                child: Container(
                                  width: 24,
                                  height: 24,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(12),
                                      image: DecorationImage(
                                          image: AssetImage(
                                              "assets/images/temple_image.png"),
                                          fit: BoxFit.fill)),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 28.0),
                                child: Stack(children: [
                                  Container(
                                    width: 24,
                                    height: 24,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(12),
                                        image: DecorationImage(
                                            image: AssetImage(
                                                "assets/images/temple_image.png"),
                                            fit: BoxFit.fill)),
                                  ),
                                  Container(
                                      width: 24,
                                      height: 24,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(12),
                                          color: Colors.black.withOpacity(0.4)),
                                      child: Center(
                                          child: Text('+4',
                                              style: TextStyle(
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.w700,
                                                  color: Colors.white)))),
                                ]),
                              ),
                            ],
                          ),
                        )
                      ],
                    )
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
