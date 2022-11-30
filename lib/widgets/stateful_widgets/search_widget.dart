// import 'package:flutter/cupertino.dart';

import 'package:easy_autocomplete/easy_autocomplete.dart';
import 'package:flutter/material.dart';

import '../../constants/theme.dart';

class SearchWidget extends StatefulWidget {
  final List<String>? suggested;
  final Function(String) onSubmit;

  const SearchWidget(
      {Key? key, required this.suggested, required this.onSubmit})
      : super(key: key);

  @override
  State<SearchWidget> createState() => _SearchWidgetState();
}

class _SearchWidgetState extends State<SearchWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 24, vertical: 8),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8), color: Colors.white),
      child: EasyAutocomplete(
          suggestionBackgroundColor: Colors.white,
          cursorColor: Colors.white,
          decoration: InputDecoration(
            contentPadding: const EdgeInsets.symmetric(horizontal: 8),
            fillColor: Colors.white,
            filled: true,
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                gapPadding: 0,
                borderSide: BorderSide.none),
            hintText: 'Email',
            hintStyle: const TextStyle(color: kSecondTextColor),
            suffixIcon:
                const Icon(Icons.search, size: 20, color: kSecondTextColor),
          ),
          suggestionBuilder: (data) {
            return Container(
                margin: EdgeInsets.all(0),
                padding: EdgeInsets.all(5),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(0),
                    color: Colors.white),
                child: Text(data, style: const TextStyle(color: Colors.black)));
          },
          suggestions: widget.suggested ?? [],
          onChanged: (value) => print('onChanged value: $value'),
          onSubmitted: (value) => {
                Future.delayed(const Duration(milliseconds: 100))
                    .then((_) => {widget.onSubmit(value)})
              }),
    );
  }
}
