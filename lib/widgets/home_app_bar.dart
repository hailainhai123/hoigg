import 'package:flutter/material.dart';

import '../constants/theme.dart';

AppBar homeAppBar(String title, BuildContext context,
    {Color? backgroundColor}) {
  return AppBar(
    backgroundColor: backgroundColor ?? backGroundColor,
    scrolledUnderElevation: 2,
    elevation: 0,
    centerTitle: true,
    leading: IconButton(
      icon: const Icon(Icons.arrow_back),
      onPressed: () => Navigator.of(context).pop(),
      color: const Color(0xFF0D0140),
      splashRadius: 8,
    ),
    title: Text(
      title,
      style: const TextStyle(
        color: Color(0xFF0D0140),
        fontWeight: FontWeight.w600,
        fontSize: 20,
      ),
    ),
    actions: [
      Container(
        margin: const EdgeInsets.only(right: 30),
        child: IconButton(
          onPressed: () => {},
          visualDensity: VisualDensity.adaptivePlatformDensity,
          icon: const Icon(
            Icons.search,
            color: Color(0xFF0D0140),
          ),
          iconSize: 30,
          splashRadius: 8,
        ),
      )
    ],
  );
}
