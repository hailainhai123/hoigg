import 'package:flutter/material.dart';

import '../constants/theme.dart';

class TitleWithBack extends StatelessWidget {
  const TitleWithBack({
    Key? key,
    required this.title,
    required this.onBack,
  }) : super(key: key);

  final String title;
  final Function onBack;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Material(
          borderRadius: BorderRadius.circular(100),
          child: Ink(
            decoration: BoxDecoration(
              color: Colors.grey[700],
              borderRadius: BorderRadius.circular(100),
            ),
            child: InkWell(
              borderRadius: BorderRadius.circular(100),
              splashFactory: InkSparkle.splashFactory,
              onTap: () => onBack(),
              child: const Icon(
                Icons.keyboard_arrow_left,
                color: Colors.white,
              ),
            ),
          ),
        ),
        const SizedBox(width: 12),
        Text(
          title,
          style: headingTextStyle.copyWith(fontSize: 18),
        ),
      ],
    );
  }
}
