import 'package:flutter/material.dart';

class PrimaryElevatedButton extends StatelessWidget {
  const PrimaryElevatedButton({
    Key? key,
    required this.child,
    required this.onClick,
    this.height,
    this.padding = 12,
  }) : super(key: key);

  final Widget child;
  final double? height;
  final Function onClick;
  final double? padding;

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 2,
      shape: RoundedRectangleBorder(
          borderRadius:
              BorderRadius.circular(height == null ? 12 : height! / 2)),
      child: Ink(
        height: height,
        decoration: BoxDecoration(
          borderRadius:
              BorderRadius.circular(height == null ? 12 : height! / 2),
          gradient: const LinearGradient(
            colors: [
              Color(0xFF6A79FD),
              Color(0xFF849DF8),
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: InkWell(
          splashColor: Colors.white.withOpacity(0.2),
          focusColor: Colors.white.withOpacity(0.4),
          borderRadius:
              BorderRadius.circular(height == null ? 12 : height! / 2),
          splashFactory: InkRipple.splashFactory,
          onTap: () => onClick(),
          child: Padding(
            padding: height == null
                ? EdgeInsets.all(padding ?? 12)
                : EdgeInsets.symmetric(horizontal: 16, vertical: 4),
            child: Align(
              child: child,
            ),
          ),
        ),
      ),
    );
  }
}
