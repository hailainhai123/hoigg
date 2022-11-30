import 'package:flutter/material.dart';
import 'package:hoigg/constants/theme.dart';

import '../../../widgets/ink_tap.dart';

class AccountMenuItem extends StatelessWidget {
  const AccountMenuItem({
    Key? key,
    required this.changeColor,
    required this.title,
    required this.onClick,
  }) : super(key: key);

  final String title;
  final bool changeColor;
  final Function onClick;

  @override
  Widget build(BuildContext context) {
    return InkTap(
      padding: const EdgeInsets.symmetric(
        vertical: 10,
        horizontal: 12,
      ),
      onClick: () => onClick(),
      splashColor: Colors.grey.withOpacity(0.2),
      child: Center(
        child: Text(
          title,
          style: TextStyle(
            fontWeight: FontWeight.w600,
            color: changeColor ? kSecondaryColor : Colors.black,
            fontSize: 13,
          ),
        ),
      ),
    );
  }
}
