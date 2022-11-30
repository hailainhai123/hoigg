import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:hoigg/constants/theme.dart';
import 'package:hoigg/pages/q&a/controller/qa_controller.dart';
import 'package:hoigg/widgets/stateful_widgets/touchable_opacity.dart';

import '../../../utils/icon_enums.dart';
import '../../../widgets/custom_circle_avatar.dart';
import '../../../widgets/primaryElevatedButton.dart';

class ItemPendingQnA extends GetView<QNAController> {
  final String content =
      "Tam giác ABC có đáy BC bằng 36dm. Nếu giảm đáy BC 1,2m thì diện tích. Tam giác ABC có đáy BC bằng 36dm. Nếu giảm đáy BC 1,2m thì diện tích";

  const ItemPendingQnA({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      margin: const EdgeInsets.symmetric(vertical: 4),
      width: double.infinity,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(4),
          color: const Color(0xffF1F3FC)),
      child: Stack(children: [
        Container(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                      height: 20,
                      width: 20,
                      child: CustomCircleAvatar(onClick: () {})),
                  Expanded(
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Expanded(
                                child: Container(
                              margin: const EdgeInsets.only(left: 8),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Row(
                                    children: const [
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
                                  const Text('Vừa xong',
                                      style: TextStyle(
                                          fontWeight: FontWeight.w400,
                                          fontSize: 10)),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 8.0, right: 8),
                                    child: Text(content,
                                        style: const TextStyle(
                                            fontWeight: FontWeight.w400,
                                            fontSize: 11,
                                            color: Color(0xff75818F))),
                                  )
                                ],
                              ),
                            )),
                            const SizedBox(width: 4),
                            Container(
                              constraints: BoxConstraints(
                                  minWidth: 0,
                                  maxWidth: size.width * 120 / 375),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
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
                        const SizedBox(height: 8),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            PrimaryElevatedButton(
                              height: 30,
                              onClick: () {
                                controller.editQuestion(content);
                              },
                              child: Row(
                                children: [
                                  SizedBox(
                                      height: 15,
                                      child: SvgPicture.asset(
                                          IconEnums.iconPostQnA,
                                          fit: BoxFit.contain)),
                                  const Text('Chỉnh sửa',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 11,
                                          fontWeight: FontWeight.w400))
                                ],
                              ),
                            ),
                            TouchableOpacity(
                              onTap: () {
                                controller.deleteQnA();
                              },
                              child: Container(
                                height: 30,
                                margin: const EdgeInsets.only(left: 16),
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 16),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                    border: Border.all(
                                        color: kSecondTextColor, width: 1.5)),
                                child: Row(
                                  children: const [
                                    SizedBox(
                                        height: 15,
                                        child: Icon(Icons.delete_outline,
                                            size: 15)),
                                    Padding(
                                      padding: EdgeInsets.only(left: 8.0),
                                      child: Text('Xoá',
                                          style: TextStyle(
                                              color: kSecondTextColor,
                                              fontSize: 11,
                                              fontWeight: FontWeight.w400)),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  )
                ],
              )
            ],
          ),
        ),
        Positioned(
          bottom: 0,
          right: 0,
          child: Align(
            alignment: Alignment.bottomRight,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(8),
                    bottomRight: Radius.circular(8),
                  ),
                  color: kSubmainColor),
              height: 30,
              child: const Center(
                child: Text('Chờ xét duyệt',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 11,
                        fontWeight: FontWeight.w400)),
              ),
            ),
          ),
        )
      ]),
    );
  }
}
