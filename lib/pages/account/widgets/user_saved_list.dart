import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hoigg/pages/account/accont_controller.dart';

import '../../../widgets/cells/cell_book.dart';
import '../../../widgets/stateful_widgets/touchable_opacity.dart';
import 'payment_history_filter.dart';
import 'user_saved_post.dart';

class UserSavedList extends StatefulWidget {
  const UserSavedList({
    Key? key,
  }) : super(key: key);

  @override
  State<UserSavedList> createState() => _UserSavedListState();
}

class _UserSavedListState extends State<UserSavedList> {
  final controller = Get.find<AccountController>();
  String selectedValue = "posts";

  void onChangedSelectedList(String value) {
    setState(() {
      selectedValue = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          const SizedBox(height: 16),
          Row(
            children: [
              Expanded(
                child: PayHistoryFilter(
                  onChanged: (value) => onChangedSelectedList(value),
                  items: [
                    DropdownItemData(value: "posts", label: "Bài viết"),
                    DropdownItemData(value: "music", label: "Nhạc không lời"),
                    DropdownItemData(value: "podcast", label: "Podcast")
                  ],
                ),
              ),
              const SizedBox(width: 24),
              Expanded(
                child: PayHistoryFilter(
                  onChanged: (value) {},
                  items: [
                    DropdownItemData(value: "time", label: "Thời gian"),
                  ],
                ),
              )
            ],
          ),
          const SizedBox(height: 21),
          Builder(
            builder: (ctx) {
              if (selectedValue == "posts") return const UserSavedPost();

              if (selectedValue == "music") {
                return buildListMusic();
              }

              if (selectedValue == "podcast") {
                return buildPodcast();
              }

              return Container();
            },
          ),
          const SizedBox(height: 48)
        ],
      ),
    );
  }

  SizedBox buildPodcast() {
    return SizedBox(
      height: 400,
      child: GridView.builder(
        padding: EdgeInsets.zero,
        itemCount: 10,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 16,
          mainAxisSpacing: 16,
          childAspectRatio: 3 / 3.2,
        ),
        itemBuilder: (context, index) {
          return const CellBook();
        },
      ),
    );
  }

  SizedBox buildListMusic() {
    return SizedBox(
      height: 480,
      child: ListView.separated(
        itemCount: 10,
        padding: EdgeInsets.zero,
        itemBuilder: (ctx, index) {
          return Row(
            children: [
              const Icon(
                Icons.queue_music_outlined,
              ),
              const SizedBox(width: 16),
              const Expanded(
                child: Text(
                  "I will Go To You Like The Fi.....",
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              const SizedBox(width: 8),
              const Text("03:35"),
              const SizedBox(width: 22),
              TouchableOpacity(
                onTap: () => {
                  controller.deletePostSave(ctx)
                },
                child: const Icon(
                  Icons.delete_outline,
                  color: Colors.red,
                ),
              )
            ],
          );
        },
        separatorBuilder: (ctx, index) {
          return const Divider();
        },
      ),
    );
  }
}
