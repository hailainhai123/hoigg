import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class GlobalController extends GetxController {
  RxBool isLogon = RxBool(false);

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    getLoginFromStorage();
  }

  void getLoginFromStorage() async {
    var isLogin = GetStorage().read('login') ?? false;
    isLogon.value = isLogin;
  }
}
