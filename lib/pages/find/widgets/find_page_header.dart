import 'package:flutter/material.dart';

import 'find_filter.dart';
import 'find_page_title.dart';

class FindPageHeader extends StatelessWidget {
  const FindPageHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 50, bottom: 0),
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
            'assets/images/find_bg_appbar.png',
          ),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        children: [
          const FindPageTitle(),
          const SizedBox(height: 34),
          const FindFilter(),
          const SizedBox(
            height: 38,
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 25),
                child: Material(
                  color: Colors.transparent,
                  child: Ink(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: const Color(0xFF5365FD),
                    ),
                    child: InkWell(
                      onTap: () => {},
                      borderRadius: BorderRadius.circular(10),
                      child: const Padding(
                        padding: EdgeInsets.all(10),
                        child: Icon(
                          Icons.settings_input_composite,
                          color: Colors.white,
                          size: 20,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 16),
              Flexible(
                child: SizedBox(
                  height: 40,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (item, index) => Container(
                      margin: const EdgeInsets.only(right: 16),
                      child: Chip(
                        backgroundColor:
                            const Color(0xFFCBC9D4).withOpacity(0.4),
                        label: const Padding(
                          padding: EdgeInsets.all(10),
                          child: Text(
                            "tu từ khi đặt câu",
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              color: Color(0xFF524B6B),
                            ),
                          ),
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
