import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hoigg/widgets/stateful_widgets/touchable_opacity.dart';

class SearchFieldWidget extends StatelessWidget {
  final Function()? onTap;

  const SearchFieldWidget({Key? key, this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: double.infinity,
      margin: const EdgeInsets.symmetric(horizontal: 16),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          border: Border.all(color: Color(0xff5365FD))),
      child: Row(
        children: [
          Expanded(
            child: TextFormField(
              decoration: const InputDecoration(
                  border: InputBorder.none, hintText: 'Tìm kiếm'),
            ),
          ),
          TouchableOpacity(
            onTap: () {
              onTap;
            },
            child: Container(
              width: 70,
              height: 50,
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(30),
                      bottomRight: Radius.circular(30)),
                  color: Color(0xff5365FD)),
              child: const Center(
                child: Icon(Icons.search, color: Colors.white),
              ),
            ),
          )
        ],
      ),
    );
  }
}
