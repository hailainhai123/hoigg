import 'package:flutter/material.dart';

import '../../../constants/theme.dart';
import '../../../widgets/home_title_1.dart';
import '../../../widgets/post_info.dart';

class HotNews extends StatelessWidget {
  const HotNews({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const HomeTitle1(
            label: 'Bài viết nổi bật',
          ),
          const SizedBox(height: 12),
          SizedBox(
            height: 86 + 8 * 2,
            width: double.infinity,
            child: Stack(
              clipBehavior: Clip.none,
              children: [
                ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemCount: 10,
                  padding:
                      const EdgeInsets.symmetric(vertical: 8, horizontal: 6),
                  itemBuilder: (ctx, index) {
                    return Container(
                      width: 285,
                      padding: const EdgeInsets.all(6),
                      decoration: BoxDecoration(
                          color: const Color(0xFFF1F3FC),
                          borderRadius: BorderRadius.circular(3),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.grey.withOpacity(0.25),
                                spreadRadius: 2,
                                blurRadius: 2,
                                offset: const Offset(
                                  0,
                                  2,
                                ))
                          ]),
                      child: Row(
                        children: [
                          AspectRatio(
                            aspectRatio: 1,
                            child: Container(
                              height: double.infinity,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(3),
                                image: const DecorationImage(
                                  fit: BoxFit.cover,
                                  image: NetworkImage(
                                      'https://randomwordgenerator.com/img/picture-generator/51e7d7404a53b10ff3d8992cc12c30771037dbf85254784b772872d19f4b_640.jpg'),
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(width: 6),
                          Expanded(
                            child: Column(
                              children: const [
                                Text(
                                  "Cảm nhận của em về giá trị biểu cảm của biện pháp tu từ trong hai câu ",
                                  style: TextStyle(
                                    fontSize: 10,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                Spacer(),
                                PostInfo(),
                              ],
                            ),
                          )
                        ],
                      ),
                    );
                  },
                  separatorBuilder: (BuildContext context, int index) {
                    return const SizedBox(width: 24);
                  },
                ),
                Positioned(
                  left: -12,
                  top: 34,
                  child: Container(
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.25),
                            spreadRadius: 1,
                            blurRadius: 1,
                          )
                        ]),
                    padding: const EdgeInsets.all(8),
                    child: const Icon(
                      Icons.arrow_back_ios_outlined,
                      color: primaryBlue,
                      size: 20,
                    ),
                  ),
                ),
                Positioned(
                  right: -18,
                  top: 34,
                  child: Container(
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.25),
                            spreadRadius: 1,
                            blurRadius: 1,
                          )
                        ]),
                    padding: const EdgeInsets.all(8),
                    child: const Icon(
                      Icons.arrow_forward_ios_outlined,
                      color: primaryBlue,
                      size: 20,
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
