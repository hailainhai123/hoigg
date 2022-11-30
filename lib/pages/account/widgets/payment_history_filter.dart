import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';

class DropdownItemData {
  final String value;
  final String label;

  DropdownItemData({
    required this.value,
    required this.label,
  });
}

class PayHistoryFilter extends StatelessWidget {
  const PayHistoryFilter({
    Key? key,
    required this.items,
    required this.onChanged,
  }) : super(key: key);

  final List<DropdownItemData> items;
  final Function(String) onChanged;

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField2<String>(
      onChanged: (value) => onChanged(value!),
      value: items.isNotEmpty ? items[0].value : "",
      style: const TextStyle(color: Color(0xFF5365FD)),
      decoration: InputDecoration(
        isDense: true,
        fillColor: const Color(0xFFE7EBFF),
        filled: true,
        contentPadding: const EdgeInsets.symmetric(horizontal: 11, vertical: 7),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(
            color: const Color(0xFFE7EBFF).withOpacity(0),
            width: 0,
          ),
        ),
        disabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(
            color: const Color(0xFFE7EBFF).withOpacity(0),
            width: 0,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(
            color: const Color(0xFFE7EBFF).withOpacity(0),
            width: 0,
          ),
        ),
      ),
      items: List.generate(items.length, (index) {
        return DropdownMenuItem(
          child: Text(items[index].label),
          value: items[index].value,
        );
      }),
    );
  }
}
