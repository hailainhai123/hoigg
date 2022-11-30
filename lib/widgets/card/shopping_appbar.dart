import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hoigg/pages/shopping/controller/shopping_controller.dart';
import 'package:searchfield/searchfield.dart';

import '../../constants/theme.dart';

PreferredSize shoppingAppbar = PreferredSize(
  preferredSize: Size.fromHeight(80.0), // here the desired height
  child: AppBar(
      centerTitle: true,
      title: Container(
        color: Colors.transparent,
        child: SearchField<String>(
          searchStyle:
              const TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
          searchInputDecoration: InputDecoration(
            isDense: true,
            filled: true,
            fillColor: Colors.white,
            prefixIcon: const Icon(
              Icons.search,
              color: kTextColor,
              size: 24,
            ),
            contentPadding: const EdgeInsets.fromLTRB(24, 8, 8, 24),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: const BorderSide(
                color: Colors.white,
              ),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: BorderSide.none,
            ),
          ),
          suggestionsDecoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.white,
          ),
          suggestions: [
            SearchFieldListItem(
              'tes',
              child: const Padding(
                padding: EdgeInsets.only(left: 34),
                child: Text("Kỹ năn rèn luyện thể dục thể thao"),
              ),
            ),
            SearchFieldListItem(
              'tes',
              child: const Padding(
                padding: EdgeInsets.only(left: 34),
                child: Text("Kỹ năn rèn luyện thể dục thể thao"),
              ),
            ),
            SearchFieldListItem(
              'tes',
              child: const Padding(
                padding: EdgeInsets.only(left: 34),
                child: Text("Kỹ năn rèn luyện thể dục thể thao"),
              ),
            ),
          ],
          // in: InputDecoration(
          //   isDense: true,
          //   filled: true,
          //   fillColor: Colors.white,
          // ),
        ),
      ),
      actions: const [
        Icon(Icons.shopping_cart),
        SizedBox(width: 8),
        Icon(
          Icons.more_vert,
          color: Colors.black,
        ),
        SizedBox(width: 8)
      ],
      flexibleSpace: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xFF849DF8),
              Color(0xFFC5B9FF),
            ],
          ),
        ),
      )),
);
