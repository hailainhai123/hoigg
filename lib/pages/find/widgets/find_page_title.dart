import 'package:flutter/material.dart';

class FindPageTitle extends StatelessWidget {
  const FindPageTitle({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Stack(
        children: [
          const SizedBox(
            width: double.infinity,
            child: Text(
              "Tìm kiếm",
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 20,
                color: Colors.white,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          Positioned(
            left: 0,
            bottom: -15,
            child: Material(
              color: Colors.transparent,
              child: IconButton(
                onPressed: () => {},
                splashRadius: 6,
                icon: const Icon(
                  Icons.arrow_back,
                  color: Colors.white,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
