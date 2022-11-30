import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:hoigg/constants/theme.dart';
import 'package:hoigg/pages/q&a/controller/qa_controller.dart';

import '../../../widgets/custom_circle_avatar.dart';

const exampleContent =
    """Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.""";

class QnAAsked extends GetView<QNAController> {
  const QnAAsked({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Container(
            margin: const EdgeInsets.only(top: 8),
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Colors.white,
                boxShadow: const [
                  BoxShadow(
                      color: Colors.grey,
                      blurRadius: 2,
                      spreadRadius: 2,
                      offset: Offset(1, 4))
                ]),
            child: ListView.builder(
                itemCount: 10,
                itemBuilder: (context, index) {
                  return Container(
                    padding: EdgeInsets.all(12),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 40,
                          child: Row(
                            children: [
                              CustomCircleAvatar(
                                onClick: () => {},
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 8.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Text('HoaMN9',
                                        style: TextStyle(
                                            color: Color(0xff060728),
                                            fontWeight: FontWeight.w700,
                                            fontSize: 15)),
                                    Text(
                                        '${DateTime.now().toIso8601String().split('T')[0]}',
                                        style: TextStyle(
                                            color: kSubTextColor,
                                            fontWeight: FontWeight.w400,
                                            fontSize: 12)),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 16.0),
                          child: Text(exampleContent,
                              style: TextStyle(
                                  fontSize: 14, fontWeight: FontWeight.w400)),
                        ),
                        Divider(
                            color: Color(0xff849df8).withOpacity(0.5),
                            thickness: 1.2)
                      ],
                    ),
                  );
                })));
  }
}
