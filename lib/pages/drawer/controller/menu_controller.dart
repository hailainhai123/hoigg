import 'package:get/get.dart';

class MenuController extends GetxController {
  var showDropDownClass = false.obs;
  var classVal = Object().obs;

  void changeClass(Object val) {
    classVal.value = val;
  }
}
