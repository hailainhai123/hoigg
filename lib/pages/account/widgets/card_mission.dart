import 'package:flutter/material.dart';

import '../../../constants/theme.dart';
import '../../../utils/styles.dart';
import '../../../widgets/primaryElevatedButton.dart';
import 'daily_mission_task.dart';

class CardMission extends StatelessWidget {
  const CardMission({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 27,
          horizontal: 20,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Làm nhiệm vụ ngay",
                  style: headingTextStyle.copyWith(
                    fontSize: 18,
                  ),
                ),
                SizedBox(
                  width: 113,
                  height: 26,
                  child: PrimaryElevatedButton(
                    padding: 5,
                    child: const Text(
                      "Đi tới hỏi đáp",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 13,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    onClick: () => {},
                  ),
                ),
              ],
            ),
            const SizedBox(height: 18),
            DailyMissionTask(
              number: 1,
              content:
                  'Sao chép từ khoá dưới đây và vào google, gõ trên thanh tìm kiếm: ',
              child: TextFormField(
                enabled: false,
                style: const TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                ),
                decoration: InputDecoration(
                    contentPadding: const EdgeInsets.symmetric(
                      vertical: 8,
                      horizontal: 10,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                      borderSide: const BorderSide(
                        color: kMainColor,
                        width: 1.4,
                      ),
                    ),
                    disabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                      borderSide: const BorderSide(
                        color: kMainColor,
                        width: 1.4,
                      ),
                    ),
                    suffixIcon: IntrinsicWidth(
                      child: Padding(
                        padding: const EdgeInsets.only(right: 8),
                        child: Row(
                          children: const [
                            Icon(
                              Icons.copy,
                              size: 14,
                              color: kMainColor,
                            ),
                            SizedBox(width: 6),
                            Text(
                              "Sao chép",
                              style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 11,
                                decoration: TextDecoration.underline,
                                color: kMainColor,
                              ),
                            )
                          ],
                        ),
                      ),
                    )),
                initialValue: "Học tập và làm theo đạo đức Hồ Chí Minh",
              ),
            ),
            const SizedBox(height: 16),
            DailyMissionTask(
              number: 2,
              content: "Tìm kiếm bài viết có chứa thông tin sau trên google:",
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      color: kMainColor,
                      width: 2,
                    )),
                clipBehavior: Clip.antiAlias,
                child: Image.network(
                  'https://i.ibb.co/y6TcxpW/Screen-Shot-2022-05-21-at-17-07-24.png',
                ),
              ),
            ),
            const SizedBox(height: 16),
            DailyMissionTask(
              number: 3,
              content:
                  "Click vào bài viết và kéo xuống cuối trang, sẽ xuất hiện mã gồm 6 chữ số, sau đó quay lại và nhập tại đây (Với mỗi lần nhập đúng, bạn đã có 5xu)",
              child: Form(
                child: TextFormField(
                  keyboardType: TextInputType.number,
                  decoration: Styles.missionInputDeco
                      .copyWith(hintText: "Nhập mã gồm 6 chữ số"),
                ),
              ),
            ),
            const SizedBox(height: 34),
            Center(
              child: SizedBox(
                width: 165,
                child: PrimaryElevatedButton(
                  child: const Text(
                    "Làm nhiệm vụ khác",
                    style: Styles.primaryButtonTextStyle,
                  ),
                  onClick: () => {},
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
