import 'package:flutter/material.dart';

import '../../../widgets/post_info.dart';

class CellHomePost extends StatelessWidget {
  const CellHomePost({
    Key? key,
    required this.onPressed,
  }) : super(key: key);

  final Function onPressed;

  @override
  Widget build(BuildContext context) {
    return Ink(
      child: InkWell(
        borderRadius: BorderRadius.circular(8),
        onTap: () => onPressed(),
        child: Row(
          children: [
            Container(
              height: 86,
              width: 86,
              padding: const EdgeInsets.all(3),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                image: const DecorationImage(
                  image:
                      NetworkImage('https://picsum.photos/seed/picsum/300/300'),
                ),
              ),
            ),
            Flexible(
              child: Container(
                padding: const EdgeInsets.only(left: 10),
                child: Column(
                  children: const [
                    Text(
                      'Cảm nhận của em về giá trị biểu cảm của biện pháp tu từ trong hai câu ',
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 13,
                      ),
                    ),
                    Spacer(),
                    PostInfo(),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
