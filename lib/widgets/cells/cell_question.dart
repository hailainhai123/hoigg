import 'package:flutter/material.dart';

import '../post_info.dart';

class CellQuestion extends StatelessWidget {
  const CellQuestion({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            flex: 2,
            child: Column(
              children: const [
                Text(
                  "Cảm nhận của em về giá trị biểu cảm của biện pháp tu từ trong hai câu",
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 13,
                  ),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
                SizedBox(height: 11),
                Text(
                  "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s",
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 10,
                  ),
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                ),
                SizedBox(height: 14),
                PostInfo(),
              ],
            ),
          ),
          const SizedBox(width: 20),
          Flexible(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(3),
              child: Image.network(
                "https://ielts-thanhloan.com/wp-content/uploads/2020/10/mathematics-png.jpg",
                width: 122,
                height: 100,
                fit: BoxFit.cover,
              ),
            ),
          )
        ],
      ),
    );
  }
}
