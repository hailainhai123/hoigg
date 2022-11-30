import 'package:flutter/material.dart';

class CustomCircleAvatar extends StatelessWidget {
  const CustomCircleAvatar({
    Key? key,
    this.radius = 26,
    this.border = 3,
    required this.onClick,
  }) : super(key: key);

  final double radius;
  final double border;
  final Function onClick;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTapUp: (detail) => onClick(),
      child: Container(
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.3),
              offset: const Offset(0, 1),
              blurRadius: 1,
              spreadRadius: 1,
            ),
          ],
        ),
        child: CircleAvatar(
          radius: radius,
          backgroundColor: Colors.white,
          child: CircleAvatar(
            radius: radius - border,
            backgroundImage: const NetworkImage(
              'https://cdn.cloudflare.steamstatic.com/steamcommunity/public/images/avatars/69/6930cc0317beeba9cac833dc840e8489134d7020_full.jpg',
            ),
          ),
        ),
      ),
    );
  }
}
