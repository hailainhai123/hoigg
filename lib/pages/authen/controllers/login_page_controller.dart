import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';
import 'package:hoigg/data/login_api_provider.dart';
import 'package:hoigg/models/base_model.dart';

enum LoginView {
  info,
  otp,
  forgotPassword,
  changePassword,
}

class LoginPageController extends GetxController {
  final pageController = PageController(initialPage: 0);
  final LoginProvider loginProvider = LoginProvider();
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController passController = TextEditingController();
  final TextEditingController repassController = TextEditingController();
  final TextEditingController forgotController = TextEditingController();

  @override
  void onInit() {
    super.onInit();
    //Loading, Success, Error handle with 1 line of code
  }

  void changeView(LoginView view) {
    pageController.animateToPage(
      view.index,
      duration: const Duration(milliseconds: 1),
      curve: Curves.linear,
    );
  }

  void back() {
    changeView(LoginView.info);
  }

  Future<void> tryToLogin({
    required String emailOrPhone,
    required String password,
  }) async {
// Note : Can show some loading popup in here;
    EasyLoading.show(status: 'login...');
    try {
      final response =
          await loginProvider.login("auth/login", emailOrPhone, password);
      EasyLoading.dismiss();
      final data = BaseModel.fromJson(response.body);
      print(data);
      if (data == null) return;
      if (data.success != null || data.success!) {
        changeView(LoginView.otp);
      }
    } catch (e) {
      EasyLoading.dismiss();
      print(e);
    }
    return;
    // if (response.status.hasError || response.body == null) {
    //   EasyLoading.dismiss();
    //   return Future.error(response.statusText!);
    // } else {
    //   EasyLoading.dismiss();
    //   print(response.body!.message);
    //   if (response.body!.success != null && response.body!.success!) {
    //     changeView(LoginView.otp);
    //   }
    //   return;
    // }

    /// Request logic login to server

    /// If login successful
  }
}
