import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CellMusic extends StatelessWidget {
  const CellMusic({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 13, horizontal: 8),
      child: Row(
        children: [
          SvgPicture.asset(
            'assets/svg/music_icon.svg',
          ),
          const SizedBox(width: 16),
          const Expanded(
            child: Text(
              'I will Go To You Like The Fi.....',
              overflow: TextOverflow.ellipsis,
            ),
          ),
          const SizedBox(width: 16),
          const Text('03:35'),
        ],
      ),
    );
  }
}
