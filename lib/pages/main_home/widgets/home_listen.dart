import 'package:flutter/material.dart';

import '../../../constants/theme.dart';

class HomeListen extends StatelessWidget {
  const HomeListen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 28),
          child: SizedBox(
            width: double.infinity,
            child: Text(
              'Nghe gì hôm nay?',
              style: headingTextStyle.copyWith(
                fontWeight: FontWeight.w500,
                fontSize: 18,
              ),
            ),
          ),
        ),
        const SizedBox(height: 24),
        SizedBox(
          height: 168,
          child: ListView.builder(
            padding: const EdgeInsets.only(left: 28),
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return Container(
                width: 278,
                margin: const EdgeInsets.only(right: 20),
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/demo_listen_image.png'),
                  ),
                ),
              );
            },
          ),
        )
      ],
    );
  }
}
