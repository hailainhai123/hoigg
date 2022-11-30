import 'package:flutter/material.dart';

import '../../../constants/theme.dart';
import '../../../widgets/form/primaryTextForm.dart';

class CardPaymentMethod extends StatelessWidget {
  const CardPaymentMethod({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: SizedBox(
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 18,
            vertical: 27,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Thông tin nạp tiền",
                style: headingTextStyle.copyWith(fontSize: 18),
              ),
              const SizedBox(height: 30),
              const PrimaryTextFormField(labelText: "Nội dung chuyển khoản"),
              const SizedBox(height: 14),
              const PrimaryTextFormField(labelText: "Tên tài khoản"),
              const SizedBox(height: 14),
              const PrimaryTextFormField(labelText: "Số tài khoản"),
              const SizedBox(height: 14),
              const PrimaryTextFormField(labelText: "Ngân hàng"),
              const SizedBox(height: 30),
            ],
          ),
        ),
      ),
    );
  }
}
