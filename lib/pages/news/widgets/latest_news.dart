import 'package:flutter/material.dart';
import 'package:separated_column/separated_column.dart';

import '../../../widgets/cells/cell_question.dart';
import '../../../widgets/home_title_1.dart';

class LatestNews extends StatelessWidget {
  const LatestNews({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          const HomeTitle1(label: "Bài viết mới nhất Hỏi GG"),
          const SizedBox(height: 8),
          SeparatedColumn(
            crossAxisAlignment: CrossAxisAlignment.start,
            separatorBuilder: (BuildContext context, int index) {
              return const Divider(
                thickness: 1,
              );
            },
            children: List.generate(
              2,
              (index) {
                return const CellQuestion();
              },
            ),
          ),
          const SizedBox(height: 16),
        ],
      ),
    );
  }
}
