import 'package:get/get.dart';
import 'package:hoigg/pages/shopping/cart_screen/controller/cart_controller.dart';

import 'global_controller.dart';

class GlobalBindings extends Bindings {
  @override
  void dependencies() {
    // UserController.findOrInitialize;
    Get.smartManagement = SmartManagement.keepFactory;
    Get.put(GlobalController(), permanent: true);
    Get.put(CartController(), permanent: true);
  }
}
