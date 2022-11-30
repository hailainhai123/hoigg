import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hoigg/constants/theme.dart';
import 'package:hoigg/pages/authen/controllers/login_page_controller.dart';
import 'package:hoigg/pages/authen/widgets/forgot_password_view.dart';
import 'package:hoigg/pages/authen/widgets/otp_view.dart';
import 'package:hoigg/widgets/form/primaryTextForm.dart';
import 'package:hoigg/widgets/primaryElevatedButton.dart';

import '../../constants/routers.dart';
import '../../widgets/layout/authen_layout.dart';
import '../../widgets/title_with_back.dart';
import 'widgets/login_info_view.dart';

class LoginPage extends GetView<LoginPageController> {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AuthenLayout(
      title: "login".tr,
      child: SizedBox(
        height: 320,
        child: PageView(
          physics: const NeverScrollableScrollPhysics(),
          controller: controller.pageController,
          children: [
            LoginInfoView(
              onPressRegister: () => Get.toNamed(kRegister),
              onPressForgotPassword: () =>
                  controller.changeView(LoginView.forgotPassword),
              onPressLogin: () => controller.tryToLogin(
                  emailOrPhone: controller.phoneController.text,
                  password: controller.passController.text),
              passEditingController: controller.passController,
              emailEditingController: controller.phoneController,
            ),
            OtpView(
              onBack: () => controller.back(),
            ),
            ForgotPasswordView(
              onBack: () => controller.back(),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TitleWithBack(
                    title: "Đổi mật khẩu",
                    onBack: () => {},
                  ),
                  const SizedBox(height: 40),
                  Form(
                    child: Column(
                      children: [
                        PrimaryTextFormField(
                            labelText: "password".tr,
                            textEditingController: controller.passController),
                        const SizedBox(height: 16),
                        PrimaryTextFormField(
                            labelText: "re-password".tr,
                            textEditingController: controller.passController),
                      ],
                    ),
                  ),
                  const SizedBox(height: 40),
                  SizedBox(
                    width: 128,
                    child: PrimaryElevatedButton(
                      onClick: () => {},
                      child: const Text(
                        "Đổi mật khẩu",
                        style: buttonTextTheme,
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
