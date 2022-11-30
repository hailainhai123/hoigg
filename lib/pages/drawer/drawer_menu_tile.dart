import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hoigg/constants/routers.dart';
import 'package:hoigg/widgets/stateful_widgets/touchable_opacity.dart';

import '../../constants/theme.dart';

class DrawerMenuTile extends StatelessWidget {
  const DrawerMenuTile({
    Key? key,
    required this.title,

  }) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      title: Text(
        title,
        style: const TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w600,
          // color: Color(0xFF5365FD),
        ),
      ),
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ListTile(
                onTap: () => {},
                title: const Text("Khoa học tự nhiên"),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 32),
                child: Column(
                  children: [
                    Container(
                      child: const Text('Toán sinh học lớp 8'),
                      margin: const EdgeInsets.only(bottom: 16),
                    ),
                    Container(
                      child: const Text('Toán sinh học lớp 8'),
                      margin: const EdgeInsets.only(bottom: 16),
                    ),
                    Container(
                      child: const Text('Toán sinh học lớp 8'),
                      margin: const EdgeInsets.only(bottom: 16),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 24),
                child: TouchableOpacity(
                  onTap: () => Get.toNamed(kCategory),
                  child: const Text(
                    "Xem thêm >>>",
                    style: TextStyle(color: kSecondaryColor),
                  ),
                ),
              ),
              const SizedBox(height: 16),
            ],
          ),
        ),
      ],
    );
  }
}
