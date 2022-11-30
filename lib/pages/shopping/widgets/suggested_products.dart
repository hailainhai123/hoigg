import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SuggestedProducts extends StatelessWidget {
  final List<String>? items;

  const SuggestedProducts({this.items});

  @override
  Widget build(BuildContext context) {
    return items == null
        ? const SizedBox()
        : Container(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            margin: const EdgeInsets.symmetric(vertical: 8),
            height: 32,
            width: double.infinity,
            child: ListView.builder(
                itemCount: items!.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Container(
                    margin: const EdgeInsets.symmetric(horizontal: 8),
                    padding:
                        const EdgeInsets.symmetric(horizontal: 24, vertical: 4),
                    decoration: BoxDecoration(
                        color: Color(0xffEDEDF0),
                        borderRadius: BorderRadius.circular(4)),
                    child: Center(child: Text(items![index])),
                  );
                }),
          );
  }
}
