import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:url_launcher/url_launcher_string.dart';

class MyTagsButton extends StatefulWidget {
  const MyTagsButton({
    super.key,
  });

  @override
  State<MyTagsButton> createState() => _MyTagsButtonState();
}

class _MyTagsButtonState extends State<MyTagsButton> {
  bool isHovered = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          decoration: BoxDecoration(
            color: isHovered ? Colors.black26 : Colors.black54,
            borderRadius: BorderRadius.circular(12),
          ),
          child: HoverableInkWell(
            text: 'Flutter',
            url: 'https://flutter.dev/',
          ),
        ),
        const SizedBox(
          width: 10,
        ),
        Container(
          decoration: BoxDecoration(
            color: isHovered ? Colors.black26 : Colors.black54,
            borderRadius: BorderRadius.circular(12),
          ),
          child: HoverableInkWell(
            text: 'Kotlin',
            url: 'https://kotlinlang.org/',
          ),
        ),
        const SizedBox(
          width: 10,
        ),
        Container(
          decoration: BoxDecoration(
            color: isHovered ? Colors.black26 : Colors.black54,
            borderRadius: BorderRadius.circular(12),
          ),
          child: HoverableInkWell(
            text: 'Swift',
            url: 'https://developer.apple.com/swift/',
          ),
        ),
      ],
    );
  }
}

class HoverableInkWell extends StatefulWidget {
  final String text;
  final String url;

  HoverableInkWell({required this.text, required this.url});

  @override
  _HoverableInkWellState createState() => _HoverableInkWellState();
}

class _HoverableInkWellState extends State<HoverableInkWell> {
  bool isHovered = false;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () async {
        if (await canLaunchUrl(Uri.parse(widget.url))) {
          await launchUrlString(widget.url);
        } else {
          throw 'Could not launch ${widget.url}';
        }
      },
      onHover: (hover) {
        setState(() {
          isHovered = hover;
        });
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 4,
          horizontal: 8,
        ),
        child: Text(
          widget.text,
          style: GoogleFonts.inter(
            textStyle: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 10,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
