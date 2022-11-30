import 'package:flutter/material.dart';

class DottedLine extends StatelessWidget {
  const DottedLine({Key? key, this.widthDash = 1.2, this.color = Colors.black})
      : super(key: key);
  final double widthDash;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        // final boxWidth = constraints.constrainWidth();
        // const dashWidth = 10.0;
        // final dashHeight = height;
        // final dashCount = (boxWidth / (2 * dashWidth)).floor();
        final boxHeight = constraints.constrainHeight();
        const dashHeight = 2.0;
        final dashWidth = widthDash;
        final dashCount = (boxHeight /4).floor();
        return Flex(
          children: List.generate(dashCount, (_) {
            return Container(
              width: dashWidth,
              height: dashHeight,
              color: color,
            );
          }),
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          direction: Axis.vertical,
        );
      },
    );
  }
}
