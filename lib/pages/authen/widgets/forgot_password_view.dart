import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hoigg/pages/authen/controllers/login_page_controller.dart';

import '../../../constants/theme.dart';
import '../../../widgets/form/primaryTextForm.dart';
import '../../../widgets/primaryElevatedButton.dart';
import '../../../widgets/title_with_back.dart';

class ForgotPasswordView extends GetView<LoginPageController> {
  const ForgotPasswordView({
    Key? key,
    required this.onBack,
  }) : super(key: key);

  final Function onBack;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TitleWithBack(
            title: "Quên mật khẩu",
            onBack: () => onBack(),
          ),
          const SizedBox(height: 42),
          const Text(
            'Vui lòng nhập email hoặc số điện thoại đã đăng ký để Hoigg.net tìm kiếm tài khoản của bạn',
          ),
          const SizedBox(height: 42),
          Form(
            child: PrimaryTextFormField(
                labelText: "email_phone".tr,
                textEditingController: controller.forgotController),
          ),
          const SizedBox(height: 24),
          SizedBox(
            width: 128,
            child: PrimaryElevatedButton(
              child: const Text(
                "Gửi xác thực",
                style: buttonTextTheme,
              ),
              onClick: () => {},
            ),
          ),
        ],
      ),
    );
  }
}
