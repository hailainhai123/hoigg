import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hoigg/constants/routers.dart';
import 'package:hoigg/pages/authen/controllers/register_page_controller.dart';

import '../../../../constants/theme.dart';
import '../../../../widgets/form/primaryTextForm.dart';
import '../../../../widgets/primaryElevatedButton.dart';

class RegisterUserInfoView extends GetView<RegisterPageController> {
  const RegisterUserInfoView({
    Key? key,
  }) : super(key: key);

  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Form(
          key: formKey,
          child: Column(
            children: [
              SizedBox(height: 8),
              PrimaryTextFormField(
                  labelText: "fullName".tr,
                  textEditingController: controller.fullNameController),
              const SizedBox(height: 16),
              PrimaryTextFormField(
                  labelText: "email_phone".tr,
                  textEditingController: controller.phoneController),
              const SizedBox(height: 16),
              PrimaryTextFormField(
                  obscureText: false,
                  labelText: "password".tr,
                  textEditingController: controller.passController),
              const SizedBox(height: 16),
              PrimaryTextFormField(
                  obscureText: false,
                  labelText: "re-password".tr,
                  textEditingController: controller.repassController),
            ],
          ),
        ),
        const SizedBox(height: 20),
        Row(
          children: [
            Checkbox(value: true, onChanged: (value) => {}),
            Flexible(
              child: RichText(
                text: TextSpan(
                  style: const TextStyle(
                    color: kTextColor,
                    fontSize: 13,
                  ),
                  text: "sign_policy_first".tr,
                  children: [
                    TextSpan(
                      text: "sign_policy_mid".tr,
                      style: const TextStyle(
                        color: kSecondaryColor,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    TextSpan(text: "sign_policy_last".tr),
                  ],
                ),
              ),
            )
          ],
        ),
        const SizedBox(height: 16),
        SizedBox(
          width: double.infinity,
          child: PrimaryElevatedButton(
            child: Text(
              "register".tr,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 13,
                fontWeight: FontWeight.w600,
              ),
            ),
            onClick: () {
              if (formKey.currentState == null) return;
              if (formKey.currentState!.validate()) {
                controller.createAccount();
              }
            },
          ),
        ),
        const SizedBox(height: 16),
        InkWell(
          onTap: () {
            Get.toNamed(kAuthenticate);
          },
          child: RichText(
            text: TextSpan(
              style: const TextStyle(
                color: kTextColor,
                fontSize: 13,
              ),
              text: "account_exist_first".tr,
              children: [
                TextSpan(
                  text: "account_exist_mid".tr,
                  style: const TextStyle(
                    color: kSecondaryColor,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                TextSpan(text: "account_exist_last".tr),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
