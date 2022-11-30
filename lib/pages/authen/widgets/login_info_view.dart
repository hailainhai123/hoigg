import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../constants/theme.dart';
import '../../../widgets/form/primaryTextForm.dart';
import '../../../widgets/primaryElevatedButton.dart';

class LoginInfoView extends StatelessWidget {
  LoginInfoView({
    Key? key,
    required this.onPressLogin,
    required this.onPressForgotPassword,
    required this.onPressRegister,
    required this.emailEditingController,
    required this.passEditingController,
  }) : super(key: key);

  final Function onPressLogin;
  final Function onPressForgotPassword;
  final Function onPressRegister;
  final TextEditingController emailEditingController;
  final TextEditingController passEditingController;
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  String? validateEmailOrPhone(String? value) {
    if (value == null || value.isEmpty) {
      return 'empty_phone_email'.tr;
    }

    if (value.isEmail) {
      return null;
    }

    return 'wrong_email_phone_format'.tr;
  }

  String? validatePassword(String? value) {
    if (value == null || value.isEmpty) {
      return 'empty_password'.tr;
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Form(
          key: formKey,
          child: Column(
            children: [
              const SizedBox(height: 8),
              PrimaryTextFormField(
                textEditingController: emailEditingController,
                labelText: 'email_phone'.tr,
                validator: validateEmailOrPhone,
              ),
              const SizedBox(height: 16),
              PrimaryTextFormField(
                textEditingController: passEditingController,
                labelText: 'password'.tr,
                obscureText: true,
                validator: validatePassword,
              ),
            ],
          ),
        ),
        const SizedBox(height: 16),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            GestureDetector(
              onTap: () => onPressForgotPassword(),
              child: Text(
                "forgot_password".tr,
                style: const TextStyle(
                  fontSize: 13,
                  decoration: TextDecoration.underline,
                  color: kSecondaryColor,
                ),
              ),
            ),
          ],
        ),
        const SizedBox(height: 12),
        SizedBox(
          width: double.infinity,
          child: PrimaryElevatedButton(
            onClick: () => {
              if (formKey.currentState!.validate())
                {
                  onPressLogin(),
                }
            },
            child: Text(
              "login".tr,
              style: buttonTextTheme,
            ),
          ),
        ),
        const SizedBox(height: 16),
        RichText(
          text: TextSpan(
            style: const TextStyle(
              color: kTextColor,
              fontSize: 13,
            ),
            text: "Bạn chưa có tài khoản?",
            children: [
              TextSpan(
                text: " Đăng ký",
                style: const TextStyle(color: kSecondaryColor),
                recognizer: TapGestureRecognizer()
                  ..onTap = () => onPressRegister(),
              ),
              const TextSpan(text: " ngay"),
            ],
          ),
        )
      ],
    );
  }
}
