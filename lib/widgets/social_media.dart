import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:url_launcher/url_launcher_string.dart';

class SocialMedia extends StatelessWidget {
  const SocialMedia({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        ClickableImage(
          imagePath: 'assets/images/Github.png',
          url: 'https://github.com/samuelmozarthss',
        ),
        SizedBox(
          width: 16,
        ),
        ClickableImage(
          imagePath: 'assets/images/Linkedin.png',
          url: 'https://br.linkedin.com/in/samuelmozarth',
        ),
        SizedBox(
          width: 16,
        ),
        ClickableImage(
          imagePath: 'assets/images/Twitter.png',
          url: 'https://twitter.com/osamuelmozarth',
        ),
        SizedBox(
          width: 16,
        ),
        ClickableImage(
          imagePath: 'assets/images/Instagram.png',
          url: 'https://instagram.com/samuelmozarth',
        ),
      ],
    );
  }
}

class ClickableImage extends StatefulWidget {
  final String imagePath;
  final String url;

  const ClickableImage({super.key, required this.imagePath, required this.url});

  @override
  State<ClickableImage> createState() => _ClickableImageState();
}

class _ClickableImageState extends State<ClickableImage> {
  bool _isHovered = false;

  void _launchURL() async {
    if (await canLaunchUrl(Uri.parse(widget.url.toString()))) {
      await launchUrlString(widget.url);
    } else {
      throw 'Could not launch ${widget.url}';
    }
  }

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (event) => setState(() => _isHovered = true),
      onExit: (event) => setState(() => _isHovered = false),
      child: GestureDetector(
        onTap: _launchURL,
        child: Image.asset(
          widget.imagePath,
          color: _isHovered ? Colors.black54 : null,
          width: 30,
          height: 30,
        ),
      ),
    );
  }
}
