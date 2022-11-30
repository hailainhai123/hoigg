import 'package:flutter/material.dart';

class InkTap extends StatelessWidget {
  const InkTap({
    Key? key,
    required this.child,
    required this.onClick,
    this.padding,
    this.splashColor,
    this.highlightColor,
  }) : super(key: key);

  final Widget child;
  final EdgeInsets? padding;
  final Color? splashColor;
  final Color? highlightColor;
  final Function onClick;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: Ink(
        child: InkWell(
          onTap: () => Future.delayed(
              const Duration(milliseconds: 300), () => onClick()),
          highlightColor: highlightColor ?? Colors.white.withOpacity(0.2),
          splashColor: splashColor ?? Colors.white.withOpacity(0.5),
          borderRadius: BorderRadius.circular(8),
          child: Padding(
            padding: padding == null ? const EdgeInsets.all(8.0) : padding!,
            child: child,
          ),
        ),
      ),
    );
  }
}
