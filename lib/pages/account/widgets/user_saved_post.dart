import 'package:flutter/material.dart';

import '../../../widgets/ink_tap.dart';
import '../../../widgets/post_info.dart';
import '../../../widgets/stateful_widgets/touchable_opacity.dart';

class UserSavedPost extends StatelessWidget {
  const UserSavedPost({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 460,
      child: ListView.separated(
        itemCount: 10,
        padding: const EdgeInsets.only(),
        itemBuilder: (ctx, index) {
          return InkTap(
            onClick: () => {},
            padding: EdgeInsets.zero,
            splashColor: Colors.grey.withOpacity(0.25),
            child: IntrinsicHeight(
              child: Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(5),
                    child: Image.network(
                      "https://images.theconversation.com/files/45159/original/rptgtpxd-1396254731.jpg?ixlib=rb-1.1.0&q=45&auto=format&w=754&fit=clip",
                      width: 82,
                      height: 82,
                      fit: BoxFit.cover,
                    ),
                  ),
                  const SizedBox(width: 8),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Cảm nhận của em về giá trị biểu cảm của biện pháp tu từ trong hai câu",
                          style: TextStyle(
                            fontSize: 11,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        const Spacer(),
                        Row(
                          children: [
                            const Expanded(child: PostInfo()),
                            TouchableOpacity(
                              child: const Icon(
                                Icons.delete_outline_outlined,
                                color: Colors.red,
                                size: 18,
                              ),
                              onTap: () => {},
                            )
                          ],
                        ),
                        const SizedBox(height: 6),
                      ],
                    ),
                  )
                ],
              ),
            ),
          );
        },
        separatorBuilder: (BuildContext context, int index) {
          return const SizedBox(height: 16);
        },
      ),
    );
  }
}
