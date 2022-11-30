import 'package:flutter/material.dart';

import '../../../../widgets/form/otp_form.dart';

class OtpView extends StatelessWidget {
  const OtpView({
    Key? key,
    required this.onBack,
  }) : super(key: key);

  final Function onBack;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: OtpForm(
        onback: onBack,
      ),
    );
  }
}
