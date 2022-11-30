import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../constants/routers.dart';
import '../pages/main_home/widgets/cell_home_post.dart';

class BlogPostGroup extends StatelessWidget {
  const BlogPostGroup({
    Key? key,
    this.itemsPadding = EdgeInsets.zero,
    this.titlePadding = EdgeInsets.zero,
    required this.titleLabel,
  }) : super(key: key);

  final String titleLabel;
  final EdgeInsets titlePadding;
  final EdgeInsets itemsPadding;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: titlePadding,
          child: Text(
            titleLabel,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        const SizedBox(height: 20),
        SizedBox(
          height: 86 * 2 + 20,
          child: GridView.builder(
            padding: itemsPadding,
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
        ),
        const SizedBox(height: 30),
      ],
    );
  }
}
