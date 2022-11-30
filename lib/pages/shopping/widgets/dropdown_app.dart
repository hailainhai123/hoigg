import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DropdownApp extends StatefulWidget {
  final List<dynamic> items;
  final Icon? icon;
  final double? height;
  final Color? textColor;
  final String? hint;
  final Function(Object)? onSave;

  DropdownApp(
      {required this.items,
      this.icon,
      this.height,
      this.textColor,
      this.hint,
      this.onSave});

  @override
  State<DropdownApp> createState() => _DropdownAppState();
}

class _DropdownAppState extends State<DropdownApp> {
  var currentItem = "";

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    currentItem = widget.hint ?? widget.items[0];
  }

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField2(
      decoration: InputDecoration(
        // fillColor: Colors.red,
        isDense: true,
        contentPadding: EdgeInsets.zero,
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: BorderSide(color: Colors.transparent)),
      ),
      isExpanded: true,
      hint: Text(
        currentItem,
        style: TextStyle(fontSize: 12, color: widget.textColor ?? Colors.black),
      ),
      icon: widget.icon ??
          const Icon(
            Icons.arrow_drop_down,
            // color: Colors.black45,
          ),
      iconSize: 30,
      buttonHeight: widget.height ?? 32,
      buttonPadding: const EdgeInsets.only(left: 10, right: 0),
      dropdownDecoration: BoxDecoration(
          borderRadius: BorderRadius.only(
        bottomLeft: Radius.circular(15),
        bottomRight: Radius.circular(15),
      )),
      items: widget.items
          .map((item) => DropdownMenuItem<String>(
                value: item,
                child: Text(
                  item,
                  style: const TextStyle(
                    fontSize: 12,
                  ),
                ),
              ))
          .toList(),
      onChanged: (value) {
        setState(() {
          currentItem = value.toString();
        });
        if (widget.onSave != null) {
          widget.onSave!(value!);
        }
        //Do something when changing the item if you want.
      },
    );
  }
}
