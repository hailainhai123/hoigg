import 'package:flutter/material.dart';

import '../../../constants/theme.dart';
import '../../main_home/widgets/cell_disscuss.dart';

class DiscussList extends StatelessWidget {
  const DiscussList({Key? key, this.padding}) : super(key: key);

  final EdgeInsets? padding;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding ?? const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 24),
          Container(
            width: double.infinity,
            padding: const EdgeInsets.symmetric(
              horizontal: 8,
              vertical: 4,
            ),
            decoration: BoxDecoration(
              color: kMainColor,
              borderRadius: BorderRadius.circular(3),
            ),
            child: const Text(
              'Thảo luận',
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w600,
                color: Colors.white,
              ),
            ),
          ),
          const SizedBox(height: 10),
          Card(
            elevation: 2,
            color: const Color(0xFFF1F3FC),
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                children: const [
                  CellDiscuss(),
                  CellDiscuss(),
                  CellDiscuss(),
                  CellDiscuss(),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
