import 'package:flutter/material.dart';

class ListenCategories extends StatelessWidget {
  const ListenCategories({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 24),
          child: Text(
            "Nghe gì hôm nay?",
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
        const SizedBox(height: 16),
        SizedBox(
          height: 168,
          child: ListView.builder(
            padding: const EdgeInsets.only(left: 24),
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
        ),
      ],
    );
  }
}
