import 'package:easy_autocomplete/easy_autocomplete.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hoigg/utils/styles.dart';
import 'package:hoigg/widgets/stateful_widgets/touchable_opacity.dart';

import '../../constants/theme.dart';

class CustomAppbar extends StatelessWidget {
  final bool? showBackIcon;
  final String? title;
  final Widget? iconRight;
  final Function()? onTapRight;
  final bool? showSearchField;
  final List<String>? suggested;

  CustomAppbar(
      {this.showBackIcon = false,
      required this.title,
      this.iconRight,
      this.suggested,
      this.showSearchField,
      this.onTapRight});

//   @override
//   State<CustomAppbar> createState() => _CustomAppbarState();
// }
//
// class _CustomAppbarState extends State<CustomAppbar> {

  // @override
  // void initState() {
  //   // TODO: implement initState
  //   super.initState();
  //   if (widget.showSearchField == null) {
  //     show = false;
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    bool showBack = showBackIcon ?? false;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8),
      child: Row(
        children: [
          showBack
              ? GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: const SizedBox(
                    width: 40,
                    child: Icon(Icons.arrow_back),
                  ),
                )
              : const SizedBox(width: 40),
          Expanded(
              child:
                  Center(child: Text(title ?? "", style: Styles.titleAppbar))),
          TouchableOpacity(
            onTap: () {
              if(onTapRight == null){
                return;
              }
              onTapRight!();
            },
            child: SizedBox(
              width: 40,
              child: iconRight,
            ),
          )
        ],
      ),
    );
  }
}
