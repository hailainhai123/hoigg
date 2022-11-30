import 'package:flutter/material.dart';
import 'package:hoigg/constants/theme.dart';
import 'package:hoigg/widgets/stateful_widgets/touchable_opacity.dart';

class OutContainerButton extends StatelessWidget {
  final Color? backgroundColor;
  final String? textButton;
  final Widget? child;
  final LinearGradient? gradient;
  final Function() onTap;

  const OutContainerButton(
      {Key? key,
      this.backgroundColor,
      this.textButton,
      this.child,
      this.gradient,
      required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TouchableOpacity(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: backgroundColor ?? kMainColor,
          gradient: gradient,
        ),
        child: Center(
          child: child ??
              Text(textButton ?? "",
                  style: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                      fontSize: 13)),
        ),
      ),
    );
  }
}
