import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class AudioController extends GetxController{
  var showChoosePageWidget = true.obs;
  var page = 999.obs;
  final TextEditingController pageController = TextEditingController();

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    pageController.text = '1';
  }
}