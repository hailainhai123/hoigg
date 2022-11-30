import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

import '../../constants/theme.dart';
import '../primaryElevatedButton.dart';
import '../title_with_back.dart';

class OtpForm extends StatelessWidget {
  const OtpForm({
    Key? key,
    required this.onback,
  }) : super(key: key);

  final Function onback;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TitleWithBack(
          title: "Nhập mã OTP",
          onBack: () => onback(),
        ),
        const SizedBox(height: 24),
        const Text(
          'Nhập mã OTP gồm 6 số đã được gửi về email của bạn để xác thực tài khoản',
        ),
        const SizedBox(height: 36),
        Padding(
          padding: const EdgeInsets.only(right: 30),
          child: Form(
            child: PinCodeTextField(
              enableActiveFill: true,
              length: 6,
              onChanged: (String value) {},
              appContext: context,
              pinTheme: PinTheme(
                shape: PinCodeFieldShape.box,
                borderRadius: BorderRadius.circular(10),
                fieldHeight: 40,
                fieldWidth: 40,
                activeFillColor: const Color(0xFFF1F3FC),
                activeColor: kMainColor,
                inactiveFillColor: const Color(0xFFF1F3FC),
                inactiveColor: const Color(0xFFF1F3FC),
                selectedColor: const Color(0xFFF1F3FC),
                selectedFillColor: kMainColor,
              ),
              keyboardType: TextInputType.number,
            ),
          ),
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
        const SizedBox(height: 16),
        const Text("Bạn chưa nhận được mã xác thực? Gửi lại (1:59)")
      ],
    );
  }
}
