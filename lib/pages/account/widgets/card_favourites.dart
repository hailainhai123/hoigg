import 'package:flutter/material.dart';

import '../../../widgets/card/my_card.dart';
import '../../../widgets/cells/cell_book.dart';
import '../../main_home/widgets/cell_home_post.dart';
import 'payment_history_filter.dart';

class CardFavourites extends StatelessWidget {
  const CardFavourites({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MyCard(
      child: SizedBox(
        width: double.infinity,
        height: 515,
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(
                    child: PayHistoryFilter(
                      items: [
                        DropdownItemData(
                          value: "post",
                          label: "Bài viết",
                        ),
                        DropdownItemData(
                          value: "audio_books",
                          label: "Sách nói",
                        ),
                        DropdownItemData(
                          value: "music",
                          label: "Nhạc không lời",
                        )
                      ],
                      onChanged: (value) {},
                    ),
                  ),
                  const SizedBox(width: 18),
                  Expanded(
                    child: PayHistoryFilter(
                      items: [],
                      onChanged: (value) {},
                    ),
                  )
                ],
              ),
              const SizedBox(height: 18),
              Expanded(
                child: Builder(builder: (context) {
                  return buildGridView();
                }),
              )
            ],
          ),
        ),
      ),
    );
  }

  GridView buildGridView() {
    return GridView.builder(
        itemCount: 10,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 16,
          mainAxisSpacing: 16,
          childAspectRatio: 3 / 3.2,
        ),
        itemBuilder: (context, index) {
          return const CellBook();
        });
  }

  ListView buildListView() {
    return ListView.separated(
      itemCount: 20,
      itemBuilder: (context, index) {
        return buildCellPost();
      },
      separatorBuilder: (BuildContext context, int index) {
        return const Divider();
      },
    );
  }

  SizedBox buildCellPost() {
    return SizedBox(
      height: 83,
      child: CellHomePost(
        onPressed: () => {},
      ),
    );
  }
}
