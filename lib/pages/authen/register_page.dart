import 'package:flutter/material.dart';
import 'package:hoigg/widgets/layout/authen_layout.dart';

import 'widgets/otp_view.dart';
import 'widgets/register_user_info_view.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AuthenLayout(
      title: "Tạo tài khoản",
      child: SizedBox(
        height: 440,
        child: PageView(
          physics: const NeverScrollableScrollPhysics(),
          controller: PageController(initialPage: 0, keepPage: true),
          children: [
            const RegisterUserInfoView(),
            OtpView(
              onBack: () => {},
            ),
          ],
        ),
      ),
    );
  }
}
