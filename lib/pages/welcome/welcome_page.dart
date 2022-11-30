import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hoigg/constants/routers.dart';
import 'package:hoigg/utils/global_controller.dart';

import '../../widgets/layout/landing_layout.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  void initState() {
    super.initState();
    var nameRouter = Get.find<GlobalController>().isLogon.value ? kHome : kAuthenticate;
    Future.delayed(
        const Duration(seconds: 1), () => {Get.offAndToNamed(nameRouter)});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      extendBodyBehindAppBar: true,
      body: LandingLayout(
        child: Center(
          child: Image.asset('assets/images/logo.png'),
        ),
      ),
    );
  }
}
