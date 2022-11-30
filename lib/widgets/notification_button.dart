import 'package:badges/badges.dart';
import 'package:flutter/material.dart';

class NotificationButton extends StatelessWidget {
  const NotificationButton({
    Key? key,
    required this.onClick,
  }) : super(key: key);

  final Function onClick;

  @override
  Widget build(BuildContext context) {
    return Badge(
      shape: BadgeShape.circle,
      position: BadgePosition.topEnd(top: -3, end: -3),
      animationType: BadgeAnimationType.scale,
      showBadge: true,
      child: SizedBox(
        width: 36,
        height: 36,
        child: Material(
          elevation: 2,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
          child: Ink(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: Colors.white,
            ),
            child: InkWell(
              borderRadius: BorderRadius.circular(8),
              onTap: () => onClick(),
              child: const Icon(
                Icons.notifications_rounded,
                color: Color(0xFF818193),
                size: 18,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
