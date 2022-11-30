import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hoigg/constants/routers.dart';

import '../../../constants/theme.dart';
import 'cell_home_post.dart';

class HomeNews extends StatelessWidget {
  const HomeNews({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 28),
          child: Text(
            'Bài viết mới nhất',
            style: headingTextStyle.copyWith(
              fontWeight: FontWeight.w500,
              fontSize: 18,
            ),
          ),
        ),
        const SizedBox(height: 20),
        SizedBox(
          height: 86 * 2 + 20,
          child: GridView.builder(
            padding: const EdgeInsets.only(left: 28),
            itemCount: 11,
            scrollDirection: Axis.horizontal,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 19,
              mainAxisSpacing: 10,
              childAspectRatio: 86 / 300,
            ),
            itemBuilder: (context, index) {
              return CellHomePost(
                onPressed: () => Get.toNamed(kBlog),
              );
            },
          ),
        )
      ],
    );
  }
}
