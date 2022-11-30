import 'package:flutter/material.dart';
import 'package:hoigg/widgets/card/my_card.dart';

import '../../../constants/theme.dart';
import '../../../utils/styles.dart';
import '../../../widgets/custom_circle_avatar.dart';

class CardMyAnswer extends StatelessWidget {
  const CardMyAnswer({Key? key}) : super(key: key);

  final styledNameText = const TextStyle(
    fontSize: 13,
    fontWeight: FontWeight.w600,
    color: kSecondaryColor,
  );

  @override
  Widget build(BuildContext context) {
    return MyCard(
      child: SizedBox(
        width: double.infinity,
        height: 515,
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: ListView.separated(
            itemBuilder: (ctx, index) {
              return Column(
                children: [
                  Row(
                    children: [
                      CustomCircleAvatar(
                        onClick: () => {},
                        radius: 34 / 2,
                      ),
                      const SizedBox(width: 10),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Text(
                                  'Hanhlth',
                                  style: styledNameText,
                                ),
                                const Icon(Icons.keyboard_arrow_right),
                                Text(
                                  'Khoa học tự nhiên',
                                  style: styledNameText,
                                )
                              ],
                            ),
                            Text(
                              '10/03/2022',
                              style: Styles.postContentStyled,
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    'Tam giác ABC có đáy BC bằng 36dm. Nếu giảm đáy BC 1,2m thì diện tích giảm đi 24m2. Tính diện tích tam giác ABC.',
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  const SizedBox(height: 16),
                ],
              );
            },
            separatorBuilder: (ctx, index) {
              return const Divider();
            },
            itemCount: 10,
          ),
        ),
      ),
    );
  }
}
