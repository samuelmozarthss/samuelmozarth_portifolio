import 'package:flutter/material.dart';

class SocialMedia extends StatelessWidget {
  const SocialMedia({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(
          'assets/images/Github.png',
          width: 50,
          height: 50,
        ),
        const SizedBox(
          width: 24,
        ),
        Image.asset(
          'assets/images/Linkedin.png',
          width: 50,
          height: 50,
        ),
        const SizedBox(
          width: 24,
        ),
        Image.asset(
          'assets/images/Twitter.png',
          width: 50,
          height: 50,
        ),
        const SizedBox(
          width: 24,
        ),
        Image.asset(
          'assets/images/Instagram.png',
          width: 50,
          height: 50,
        ),
      ],
    );
  }
}
