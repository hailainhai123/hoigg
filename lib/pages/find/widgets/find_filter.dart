import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';

import '../../../constants/theme.dart';

class FindFilter extends StatelessWidget {
  const FindFilter({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 29),
          child: TextFormField(
            decoration: InputDecoration(
              hintText: "Tìm kiếm",
              hintStyle: const TextStyle(
                color: Color(0xFFAAA6B9),
              ),
              fillColor: Colors.white,
              filled: true,
              prefixIcon: const Icon(
                Icons.search,
                size: 32,
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
        ),
        const SizedBox(height: 16),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 29),
          child: DropdownButtonFormField2(
            onChanged: (value) => {},
            onSaved: (value) => {},
            icon: const Icon(
              Icons.keyboard_arrow_down,
              color: kMainColor,
            ),
            iconSize: 24,
            buttonPadding: const EdgeInsets.only(left: 0, right: 0),
            decoration: InputDecoration(
              hintText: "Chuyên mục",
              contentPadding: const EdgeInsets.fromLTRB(0, 8, 16, 8),
              hintStyle: const TextStyle(
                color: Color(0xFFAAA6B9),
              ),
              fillColor: Colors.white,
              filled: true,
              prefixIcon: const Icon(
                Icons.menu,
                size: 24,
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            isExpanded: true,
            items: const [
              DropdownMenuItem(
                value: "Chuyên mục 1",
                child: Text("Chuyên mục 1"),
              ),
              DropdownMenuItem(
                value: "Chuyên mục 2",
                child: Text("Chuyên mục 2"),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
