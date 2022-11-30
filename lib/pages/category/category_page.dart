import 'package:flutter/material.dart';
import 'package:hoigg/constants/theme.dart';
import 'package:separated_column/separated_column.dart';
import 'package:separated_row/separated_row.dart';

import '../../widgets/cells/cell_question.dart';
import '../../widgets/home_title_1.dart';
import '../news/widgets/discuss_list.dart';

class CategoryPage extends StatelessWidget {
  const CategoryPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          const SizedBox(height: 24),
          Container(
            width: double.infinity,
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 24,
            ),
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/bg.png'),
                fit: BoxFit.fill,
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "Cánh diều 6",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        color: kSecondaryColor,
                      ),
                    ),
                    SizedBox(
                      width: 109,
                      child: ElevatedButton(
                        onPressed: () => {},
                        child: const Text('Theo dõi'),
                      ),
                    )
                  ],
                ),
                const SizedBox(height: 8),
                const Text(
                  "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. Xem thêm",
                  style: TextStyle(
                    fontSize: 10,
                    color: Colors.white,
                    height: 2,
                  ),
                ),
                const SizedBox(height: 16),
                SeparatedRow(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  separatorBuilder: (BuildContext context, int index) {
                    return Container(
                      width: 6,
                      height: 6,
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                      ),
                    );
                  },
                  children: [
                    RichText(
                      text: const TextSpan(
                          children: [
                            TextSpan(
                                text: "120K",
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                )),
                            TextSpan(text: " Bài viết")
                          ],
                          style: TextStyle(
                            fontSize: 12,
                          )),
                    ),
                    RichText(
                      text: const TextSpan(
                          children: [
                            TextSpan(
                                text: "120K",
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                )),
                            TextSpan(text: " Bài viết")
                          ],
                          style: TextStyle(
                            fontSize: 12,
                          )),
                    ),
                    RichText(
                      text: const TextSpan(
                        children: [
                          TextSpan(
                              text: "120K",
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                              )),
                          TextSpan(text: " Bài viết")
                        ],
                        style: TextStyle(
                          fontSize: 12,
                        ),
                      ),
                    )
                  ],
                ),
                const SizedBox(height: 16),
                RichText(
                  text: const TextSpan(
                    style: TextStyle(fontSize: 12),
                    text: "Được tạo bởi tác giả: ",
                    children: [
                      TextSpan(
                        text: "Nguyễn Văn A",
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          const SizedBox(height: 18),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24 - 16),
            child: Column(
              children: [
                const HomeTitle1(label: "Bài viết mới nhất Hỏi GG"),
                const SizedBox(height: 20),
                SeparatedColumn(
                  separatorBuilder: (ctx, index) {
                    return const Divider(
                      thickness: 1,
                    );
                  },
                  children: const [
                    CellQuestion(),
                    CellQuestion(),
                  ],
                ),
              ],
            ),
          ),
          const DiscussList(
            padding: EdgeInsets.symmetric(horizontal: 24 - 16),
          ),
          const SizedBox(height: 128),
        ],
      ),
    );
  }

  //   return Scaffold(
  //     extendBodyBehindAppBar: true,
  //     appBar: AppBar(
  //       backgroundColor: Colors.transparent,
  //       elevation: 0,
  //       leading: TouchableOpacity(
  //         onTap: () => Get.back(),
  //         child: const Icon(
  //           Icons.arrow_back,
  //         ),
  //       ),
  //       title: Text(
  //         "Danh mục",
  //         style: Styles.titleAppbar.copyWith(color: Colors.white),
  //       ),
  //     ),
  //     body: SizedBox(
  //       width: double.infinity,
  //       child: Column(
  //         children: [
  //           Container(
  //             width: double.infinity,
  //             padding: const EdgeInsets.fromLTRB(24, 116, 24, 20),
  //             decoration: const BoxDecoration(
  //               image: DecorationImage(
  //                 image: AssetImage('assets/images/find_bg_appbar_2.png'),
  //                 fit: BoxFit.fill,
  //               ),
  //             ),
  //             child: Column(
  //               crossAxisAlignment: CrossAxisAlignment.start,
  //               children: [
  //                 const Text(
  //                   "Danh mục kiến thức",
  //                   style: TextStyle(
  //                     color: kSecondaryColor,
  //                     fontWeight: FontWeight.w600,
  //                     fontSize: 20,
  //                   ),
  //                 ),
  //                 const SizedBox(height: 12),
  //                 const Text(
  //                   "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. Xem thêm",
  //                   style: TextStyle(
  //                     color: Colors.white,
  //                     fontSize: 11,
  //                     height: 2,
  //                   ),
  //                 ),
  //                 const SizedBox(height: 24),
  //                 Row(
  //                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
  //                   children: [
  //                     const CategoryStatsLabel(
  //                       valueText: '120',
  //                       labelText: 'Bài viết',
  //                     ),
  //                     buildDot(),
  //                     const CategoryStatsLabel(
  //                       valueText: '23k',
  //                       labelText: 'Câu hỏi',
  //                     ),
  //                     buildDot(),
  //                     const CategoryStatsLabel(
  //                       valueText: '23k',
  //                       labelText: 'Câu trả lời',
  //                     ),
  //                   ],
  //                 )
  //               ],
  //             ),
  //           ),
  //           const SizedBox(height: 24),
  //           Flexible(
  //             child: SingleChildScrollView(
  //               child: Column(
  //                 children: const [
  //                   BlogPostGroup(
  //                     titlePadding: EdgeInsets.only(
  //                       left: 28,
  //                     ),
  //                     itemsPadding: EdgeInsets.only(
  //                       left: 28,
  //                     ),
  //                     titleLabel: 'Bài viết mới nhất',
  //                   ),
  //                   SizedBox(height: 10),
  //                   BlogPostGroup(
  //                     titlePadding: EdgeInsets.only(
  //                       left: 28,
  //                     ),
  //                     itemsPadding: EdgeInsets.only(
  //                       left: 28,
  //                     ),
  //                     titleLabel: 'Bài viết nổi bật',
  //                   ),
  //                 ],
  //               ),
  //             ),
  //           )
  //         ],
  //       ),
  //     ),
  //   );
  // }

  Container buildDot() {
    return Container(
      height: 6,
      width: 6,
      decoration: const BoxDecoration(
        color: Colors.white,
        shape: BoxShape.circle,
      ),
    );
  }
}
