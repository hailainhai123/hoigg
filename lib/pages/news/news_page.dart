import 'package:flutter/material.dart';

import 'widgets/discuss_list.dart';
import 'widgets/hot_news.dart';
import 'widgets/latest_news.dart';
import 'widgets/listen_categories.dart';

class NewsPage extends StatelessWidget {
  const NewsPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: const [
          HotNews(),
          LatestNews(),
          ListenCategories(),
          DiscussList(),
          SizedBox(height: 128),
        ],
      ),
    );
  }
}
