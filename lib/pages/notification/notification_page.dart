import 'package:flutter/material.dart';

import '../../utils/styles.dart';
import '../../widgets/home_app_bar.dart';

class NotificationPage extends StatelessWidget {
  const NotificationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: homeAppBar("Thông báo", context),
      body: ListView.builder(
        itemCount: 30,
        padding: const EdgeInsets.fromLTRB(20, 8, 20, 60),
        itemBuilder: (context, index) {
          return Container(
            padding: const EdgeInsets.symmetric(
              vertical: 8,
              horizontal: 11,
            ),
            margin: const EdgeInsets.only(bottom: 16),
            child: Column(
              children: [
                Text(
                  'Quản trị viên đã phê duyệt câu hỏi của bạn '
                  'trong chuyên mục “khoa học tự nhiên”.',
                  style: Styles.notiTitle,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: const [
                    Text(
                      '09:30 - 26/03/2022',
                      style: TextStyle(
                        color: Color(0xFF75818F),
                        fontSize: 11,
                      ),
                    ),
                  ],
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
