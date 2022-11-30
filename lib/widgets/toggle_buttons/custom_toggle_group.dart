import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:separated_row/separated_row.dart';

import 'custom_toggle_item.dart';

class ToggleItem {
  final String value;
  final String label;

  const ToggleItem({
    required this.value,
    required this.label,
  });
}

class CustomToggleGroup extends StatelessWidget {
  const CustomToggleGroup({
    Key? key,
    required this.items,
    required this.value,
    required this.onChanged,
  }) : super(key: key);

  final List<ToggleItem> items;
  final String value;
  final Function(ToggleItem) onChanged;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Ink(
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.white,
          ),
          padding: const EdgeInsets.all(5),
          child: SeparatedRow(
            separatorBuilder: (BuildContext context, int index) {
              return Container(
                margin: const EdgeInsets.symmetric(horizontal: 8),
                child: SvgPicture.asset('assets/svg/divider.svg'),
              );
            },
            children: List.generate(
              items.length,
              (index) {
                return Expanded(
                  child: CustomToggleItem(
                    isSelected: value == items[index].value,
                    label: items[index].label,
                    onTap: () => onChanged(items[index]),
                  ),
                );
              },
            ),
          ),
        ),
      ],
    );
  }
}
