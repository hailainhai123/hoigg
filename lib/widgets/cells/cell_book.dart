import 'package:flutter/material.dart';

import '../../constants/theme.dart';
import '../../utils/styles.dart';

class CellBook extends StatelessWidget {
  const CellBook({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => {},
      borderRadius: BorderRadius.circular(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          AspectRatio(
            aspectRatio: 135 / 103,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: const DecorationImage(
                  image: NetworkImage(
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTzF03KHvym9MYvtKr9KuFPohsT7w2IoI5kJA&usqp=CAU"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Text(
            "Khởi động ngày mới",
            style: headingTextStyle.copyWith(
              fontSize: 13,
            ),
            overflow: TextOverflow.ellipsis,
          ),
          Text(
            'Lorem Ipsum Ipsum is a...',
            overflow: TextOverflow.ellipsis,
            style: Styles.postContentStyled.copyWith(fontSize: 13),
          )
        ],
      ),
    );
  }
}
