import 'package:flutter/material.dart';

import '../../../constants/theme.dart';

class DailyMissionTask extends StatelessWidget {
  const DailyMissionTask({
    Key? key,
    required this.number,
    required this.content,
    required this.child,
  }) : super(key: key);

  final int number;
  final String content;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 8),
          child: RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: "BƯỚC $number: ",
                  style: const TextStyle(
                    color: kMainColor,
                    fontWeight: FontWeight.w600,
                    fontSize: 13,
                  ),
                ),
                TextSpan(
                  text: content,
                  style: const TextStyle(
                    fontWeight: FontWeight.w600,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          ),
        ),
        child,
      ],
    );
  }
}
