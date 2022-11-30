import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LandingLayout extends StatelessWidget {
  const LandingLayout({
    Key? key,
    required this.child,
  }) : super(key: key);

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          width: Get.width,
          height: Get.height,
          child: Stack(
            children: [
              Positioned(child: Image.asset('assets/images/Vector.png')),
              Positioned(
                right: 0,
                bottom: 0,
                child: Image.asset('assets/images/Vector-2.png'),
              ),
            ],
          ),
        ),
        child
      ],
    );
  }
}
