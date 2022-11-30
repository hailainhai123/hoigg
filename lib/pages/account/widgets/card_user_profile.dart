import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hoigg/pages/account/accont_controller.dart';

import '../../../widgets/form/primaryTextForm.dart';

class CardUserProfile extends StatelessWidget {
  const CardUserProfile({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<AccountController>();
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 24),
      child: Column(
        children: [
          Form(
            child: Column(
              children: const [
                PrimaryTextFormField(labelText: "Họ tên"),
                SizedBox(height: 16),
                PrimaryTextFormField(labelText: "Email"),
                SizedBox(height: 16),
                PrimaryTextFormField(labelText: "SDT"),
                SizedBox(height: 16),
                PrimaryTextFormField(labelText: "Giới tính"),
                SizedBox(height: 16),
                PrimaryTextFormField(labelText: "Ngày  sinh"),
                SizedBox(height: 16),
                PrimaryTextFormField(
                  labelText: "Địa chỉ liên hệ",
                  hintText: "Thêm địa chỉ liên hệ",
                ),
              ],
            ),
          ),
          const SizedBox(height: 24),
          OutlinedButton(
            onPressed: () => {},
            child: const Text("Cập nhật thông tin"),
          ),
          TextButton(
            onPressed: () => {controller.showChangePassword(context)},
            child: const Text("Đổi mật khẩu"),
          )
        ],
      ),
    );
  }
}
