import 'package:flutter/material.dart';

import '../../../constants/theme.dart';
import 'payment_history_filter.dart';

class CardPayHistory extends StatelessWidget {
  const CardPayHistory({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 519,
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 15,
          horizontal: 17,
        ),
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: PayHistoryFilter(
                    items: [],
                    onChanged: (value) {},
                  ),
                ),
                const SizedBox(width: 18),
                Expanded(
                  child: PayHistoryFilter(
                    items: [],
                    onChanged: (value) {},
                  ),
                )
              ],
            ),
            const SizedBox(height: 18),
            Expanded(
              child: ListView.builder(
                itemCount: 10,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(bottom: 24),
                    child: Row(
                      children: [
                        Container(
                          width: 4,
                          height: 4,
                          decoration: const BoxDecoration(
                            color: kSubTextColor,
                            shape: BoxShape.circle,
                          ),
                        ),
                        const SizedBox(width: 8),
                        Flexible(
                          child: RichText(
                            text: const TextSpan(
                              children: [
                                TextSpan(
                                  text:
                                      "Ngày 27/11/2021  12:21   +10 Xu, Nội dung:",
                                  style: TextStyle(fontWeight: FontWeight.w700),
                                ),
                                TextSpan(
                                    text:
                                        "Trả lời câu hỏi trong chuyên mục Khoa học tự nhiên"),
                              ],
                              style: TextStyle(
                                fontSize: 14,
                                color: kSubTextColor,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
