import 'package:flutter/material.dart';
import 'package:hoigg/widgets/post_info.dart';

import '../../utils/styles.dart';
import 'widgets/find_page_header.dart';

class FindPage extends StatelessWidget {
  const FindPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      body: SizedBox(
        width: double.infinity,
        child: Column(
          children: [
            const FindPageHeader(),
            const SizedBox(height: 16),
            Flexible(
              child: ListView.builder(
                itemCount: 10,
                padding: const EdgeInsets.only(left: 20, right: 20, bottom: 80),
                itemBuilder: (context, index) {
                  return Container(
                    margin: const EdgeInsets.only(bottom: 9),
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      elevation: 1,
                      child: InkWell(
                        onTap: () => {},
                        borderRadius: BorderRadius.circular(20),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 16,
                            vertical: 19,
                          ),
                          child: Column(
                            children: [
                              SizedBox(
                                height: 83,
                                child: Row(
                                  crossAxisAlignment:
                                      CrossAxisAlignment.stretch,
                                  children: [
                                    Container(
                                      height: 83,
                                      width: 83,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(5),
                                        image: const DecorationImage(
                                          image: NetworkImage(
                                              'https://i.picsum.photos/id/63/536/354.jpg?hmac=xXmE-9GrUV1ZluvrcTKYrEbhSzVKFbFoZFKOGiim8xk'),
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                    const SizedBox(width: 8),
                                    Flexible(
                                      child: Column(
                                        children: const [
                                          Text(
                                            "Cảm nhận của em về giá trị biểu cảm của biện pháp tu từ trong hai câu ",
                                            maxLines: 2,
                                            overflow: TextOverflow.ellipsis,
                                            style: TextStyle(
                                              fontWeight: FontWeight.w500,
                                              fontSize: 13,
                                            ),
                                          ),
                                          Spacer(),
                                          PostInfo(),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(height: 16),
                              Text(
                                "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s,",
                                style: Styles.postContentStyled,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
