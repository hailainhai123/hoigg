import 'package:flutter/material.dart';

import 'custom_circle_avatar.dart';

class StackAvatars extends StatelessWidget {
  const StackAvatars({
    Key? key,
    this.avatarRadius = 10,
    this.showTotal = 3,
    this.moreTotal = 4,
    this.spacing = 12,
  }) : super(key: key);

  final double avatarRadius;
  final int moreTotal;
  final int showTotal;
  final double spacing;

  List<Widget> buildStack(int showTotal, int moreTotal) {
    List<Widget> result = [];

    for (int i = 0; i < showTotal; i++) {
      if (i == 0) {
        result.add(
          CustomCircleAvatar(
            onClick: () => {},
            border: 0,
            radius: avatarRadius,
          ),
        );
      } else {
        result.add(Positioned(
          right: -(spacing * i),
          child: CustomCircleAvatar(
            onClick: () => {},
            border: 0,
            radius: avatarRadius,
          ),
        ));
      }
    }

    return result;
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.centerRight,
      clipBehavior: Clip.none,
      children: buildStack(3, 4),
      // children: [
      //   CustomCircleAvatar(
      //     onClick: () => {},
      //     border: 0,
      //     radius: avatarRadius,
      //   ),
      //   Positioned(
      //     right: -12,
      //     child: CustomCircleAvatar(
      //       onClick: () => {},
      //       border: 0,
      //       radius: avatarRadius,
      //     ),
      //   ),
      //   Positioned(
      //     right: -24,
      //     child: CustomCircleAvatar(
      //       onClick: () => {},
      //       border: 0,
      //       radius: avatarRadius,
      //     ),
      //   )
      // ],
    );
  }
}
