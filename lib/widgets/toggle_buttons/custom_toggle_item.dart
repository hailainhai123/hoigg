import 'package:flutter/material.dart';

import '../../constants/theme.dart';

class CustomToggleItem extends StatelessWidget {
  const CustomToggleItem({
    Key? key,
    required this.isSelected,
    required this.label,
    required this.onTap,
  }) : super(key: key);

  final String label;
  final bool isSelected;
  final Function onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(10),
      onTap: () => onTap(),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 400),
        padding: const EdgeInsets.symmetric(vertical: 15),
        decoration: isSelected
            ? BoxDecoration(
                color: isSelected ? kSecondaryColor : Colors.white,
                borderRadius: BorderRadius.circular(10),
              )
            : null,
        child: Text(
          label,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 13,
            fontWeight: FontWeight.w700,
            color: isSelected ? Colors.white : Colors.black,
          ),
        ),
      ),
    );
  }
}
