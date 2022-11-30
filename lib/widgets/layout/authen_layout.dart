import 'package:flutter/material.dart';

import '../../constants/theme.dart';
import 'landing_layout.dart';

class AuthenLayout extends StatelessWidget {
  const AuthenLayout({
    Key? key,
    required this.title,
    required this.child,
  }) : super(key: key);

  final String title;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kLoginBackgroundColor,
      body: LandingLayout(
        child: SingleChildScrollView(
          child: SizedBox(
            width: double.infinity,
            child: Stack(
              children: [
                Positioned(
                  top: 68,
                  right: 0,
                  child: Image.asset('assets/images/pepole.png'),
                ),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(16, 207, 16, 0),
                      child: Card(
                        color: Colors.white,
                        elevation: 8,
                        child: Container(
                          width: double.infinity,
                          padding: const EdgeInsets.fromLTRB(19, 20, 19, 20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Image.asset("assets/images/logo_2.png"),
                              const SizedBox(height: 16),
                              Builder(builder: (context) {
                                if (title == "") {
                                  return const SizedBox.shrink();
                                }

                                return Text(
                                  title,
                                  style: headingTextStyle,
                                );
                              }),
                              const SizedBox(height: 20),
                              child
                            ],
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
