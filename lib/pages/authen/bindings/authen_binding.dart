import 'package:get/get.dart';
import 'package:hoigg/data/login_api_provider.dart';
import 'package:hoigg/pages/authen/controllers/login_page_controller.dart';
import 'package:hoigg/pages/authen/controllers/register_page_controller.dart';

class AuthenBlinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => LoginPageController());
    Get.lazyPut(() => RegisterPageController());
  }
}
