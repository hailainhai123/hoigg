import 'package:flutter/material.dart';

class CategoryStatsLabel extends StatelessWidget {
  const CategoryStatsLabel({
    Key? key,
    required this.valueText,
    required this.labelText,
  }) : super(key: key);

  final String valueText;
  final String labelText;

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        children: [
          TextSpan(
              text: '${valueText.toString()} ',
              style: const TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 14,
              )),
          TextSpan(
            text: labelText,
            style: const TextStyle(fontSize: 11),
          ),
        ],
      ),
    );
  }
}
