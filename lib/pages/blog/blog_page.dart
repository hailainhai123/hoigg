import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_widget_from_html/flutter_widget_from_html.dart';
import 'package:hoigg/widgets/post_info.dart';

import '../../constants/theme.dart';
import '../../utils/styles.dart';
import '../../widgets/blog_post_group.dart';
import '../../widgets/home_app_bar.dart';

const htmlTestContent = "";

class BlogPage extends StatelessWidget {
  const BlogPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: homeAppBar("", context),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 16,
        ),
        child: Column(
          children: [
            Text(
              'Thí sinh, giáo viên nhận xét gì '
              'về đề thi tổ hợp Khoa học tự nhiên?',
              style: Styles.blogTitle,
            ),
            const SizedBox(height: 24),
            Row(
              children: [
                Container(
                  margin: const EdgeInsets.only(right: 12),
                  child: SvgPicture.asset('assets/svg/share.svg'),
                ),
                Container(
                  margin: const EdgeInsets.only(right: 12),
                  child: SvgPicture.asset('assets/svg/Twitter.svg'),
                ),
                Container(
                  margin: const EdgeInsets.only(right: 12),
                  child: SvgPicture.asset('assets/svg/Facebook.svg'),
                ),
                Container(
                  margin: const EdgeInsets.only(right: 12),
                  child: SvgPicture.asset('assets/svg/Skype.svg'),
                ),
                Container(
                  margin: const EdgeInsets.only(right: 12),
                  child: SvgPicture.asset(
                    'assets/svg/LinkedIN.svg',
                  ),
                ),
                const SizedBox(
                  height: 17,
                  child: VerticalDivider(
                    thickness: 2,
                    color: kSubTextColor,
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(left: 18),
                  child: SvgPicture.asset(
                    'assets/svg/heart.svg',
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),
            const Divider(),
            const SizedBox(height: 13),
            const PostInfo(),
            const SizedBox(height: 13),
            const Divider(),
            FutureBuilder<String>(
              future: DefaultAssetBundle.of(context)
                  .loadString('assets/content_test.txt'),
              builder: (context, snapShot) {
                print(snapShot.data);

                if (!snapShot.hasData) {
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                }

                return HtmlWidget(
                  snapShot.data!,
                  textStyle: const TextStyle(fontSize: 14),
                );
              },
            ),
            const SizedBox(height: 28),
            const SizedBox(
              width: double.infinity,
              child: BlogPostGroup(
                titleLabel: 'Bài viết nổi bật',
              ),
            )
          ],
        ),
      ),
    );
  }
}
