import 'package:flutter/material.dart';

import '../../../constants/theme.dart';
import '../../../widgets/custom_circle_avatar.dart';
import '../../../widgets/stack_avatars.dart';

class CellDiscuss extends StatelessWidget {
  const CellDiscuss({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomCircleAvatar(
          onClick: () => {},
          radius: 18,
          border: 1,
        ),
        const SizedBox(width: 8),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 8),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  flex: 2,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text(
                            "Hanhlth",
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 11,
                              color: kSubmainColor,
                            ),
                          ),
                          Icon(
                            Icons.arrow_forward_ios_rounded,
                            size: 10,
                          ),
                          Text(
                            'Khoa học tự nhiên',
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 11,
                              color: Color(0xFF849DF8),
                            ),
                          )
                        ],
                      ),
                      const Text(
                        'Vừa xong',
                        style: TextStyle(
                          fontSize: 8,
                          color: kSubTextColor,
                        ),
                      ),
                      const SizedBox(height: 4),
                      const Text(
                        "Tam giác ABC có đáy BC bằng 36dm. Nếu giảm đáy BC 1,2m thì ",
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 10,
                          color: kSubTextColor,
                        ),
                      ),
                      const SizedBox(height: 8),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          StackAvatars(),
                          Text(
                            'Trả lời ngay',
                            style: TextStyle(
                              color: primaryBlue,
                              fontSize: 10,
                              decoration: TextDecoration.underline,
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
                const SizedBox(width: 13),
                ClipRRect(
                  borderRadius: BorderRadius.circular(5),
                  child: Image.network(
                    'https://ielts-thanhloan.com/wp-content/uploads/2020/10/mathematics-png.jpg',
                    width: 87,
                    height: 87,
                    fit: BoxFit.cover,
                  ),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
