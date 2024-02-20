import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:url_launcher/url_launcher_string.dart';

class TagLinks extends StatefulWidget {
  final String nameTag;
  final String url;

  const TagLinks({super.key, required this.nameTag, required this.url});

  @override
  _TagLinksState createState() => _TagLinksState();
}

class _TagLinksState extends State<TagLinks> {
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
      child: Container(
        decoration: BoxDecoration(
          color: Colors.black45,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 4,
            horizontal: 8,
          ),
          child: Text(
            widget.nameTag,
            style: GoogleFonts.inter(
              textStyle: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 10,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
