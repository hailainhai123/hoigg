import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../stateful_widgets/touchable_opacity.dart';

class DialogCloseButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        TouchableOpacity(
          onTap: () {
            Get.back();
          },
          child: const Padding(
            padding: EdgeInsets.only(right: 8.0),
            child: SizedBox(height: 20, width: 20, child: Icon(Icons.close)),
          ),
        ),
      ],
    );
  }
}
