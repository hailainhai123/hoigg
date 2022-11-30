import 'package:flutter/material.dart';

import '../constants/theme.dart';
import 'custom_circle_avatar.dart';

class PostInfo extends StatelessWidget {
  const PostInfo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CustomCircleAvatar(
          radius: 12,
          border: 1,
          onClick: () => {},
        ),
        const SizedBox(width: 10),
        Flexible(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              RichText(
                text: const TextSpan(
                  text: "Hanhlth ",
                  style: TextStyle(
                    fontSize: 7,
                    color: kSecondaryColor,
                    fontWeight: FontWeight.w600,
                  ),
                  children: [
                    TextSpan(
                      text: "đăng trong",
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        color: Color(0xFF75818F),
                      ),
                    ),
                    TextSpan(
                      text: " Canh Dieu",
                    )
                  ],
                ),
              ),
              const SizedBox(height: 5),
              const Text(
                '27/02/2022 . 10 phút đọc',
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 7,
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
