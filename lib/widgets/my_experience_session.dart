import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:url_launcher/url_launcher_string.dart';

class MyExperienceSession extends StatefulWidget {
  final String companyUrl;
  final String experienceDate;
  final String experienceTitle;
  final String employerName;
  final String experienceDescription;
  final Map<String, String> tagLinks;

  const MyExperienceSession({
    super.key,
    required this.companyUrl,
    required this.experienceDate,
    required this.experienceTitle,
    required this.employerName,
    required this.experienceDescription,
    required this.tagLinks,
  });

  @override
  State<MyExperienceSession> createState() => _MyExperienceSessionState();
}

class _MyExperienceSessionState extends State<MyExperienceSession> {
  bool _isHovered = false;

  @override
  Widget build(BuildContext context) {
    List<Widget> tagLinks = [];
    widget.tagLinks.forEach((nameTag, url) {
      tagLinks.add(
        TagLinks(
          nameTag: nameTag,
          url: url,
        ),
      );
      tagLinks.add(const SizedBox(height: 10));
    });
    return GestureDetector(
      onTap: () async {
        if (await canLaunchUrl(Uri.parse(widget.companyUrl))) {
          await launchUrlString(widget.companyUrl);
        } else {
          throw 'Could not launch ${widget.companyUrl}';
        }
      },
      child: MouseRegion(
        onEnter: (_) => setState(() => _isHovered = true),
        onExit: (_) => setState(() => _isHovered = false),
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 100),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: _isHovered
                ? const Color.fromRGBO(0, 0, 0, 0.020)
                : Colors.transparent,
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  flex: 2,
                  child: Text(
                    widget.experienceDate,
                    style: GoogleFonts.inter(
                      textStyle: const TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 16,
                        color: Color.fromRGBO(0, 0, 0, 0.6),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                Expanded(
                  flex: 5,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          ExperienceHeader(
                            companyUrl: widget.companyUrl,
                            experienceTitle: widget.experienceTitle,
                          ),
                        ],
                      ),
                      Text(
                        widget.employerName,
                        style: GoogleFonts.inter(
                          textStyle: const TextStyle(
                            fontWeight: FontWeight.w800,
                            fontSize: 16,
                            color: Color.fromRGBO(0, 0, 0, 0.6),
                          ),
                        ),
                      ),
                      Text(
                        widget.experienceDescription,
                        style: GoogleFonts.inter(
                          textStyle: const TextStyle(
                            fontWeight: FontWeight.w200,
                            fontSize: 16,
                            color: Color.fromRGBO(0, 0, 0, 0.6),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 12,
                      ),
                      Wrap(
                        spacing: 10,
                        runSpacing: 10,
                        children: tagLinks,
                      ),
                      const SizedBox(
                        width: 10,
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class ExperienceHeader extends StatefulWidget {
  final String companyUrl;
  final String experienceTitle;

  const ExperienceHeader(
      {super.key, required this.companyUrl, required this.experienceTitle});
  @override
  State<ExperienceHeader> createState() => _ExperienceHeaderState();
}

class _ExperienceHeaderState extends State<ExperienceHeader> {
  double iconSize = 10;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () async {
        if (await canLaunchUrl(Uri.parse(widget.companyUrl))) {
          await launchUrlString(widget.companyUrl);
        } else {
          throw 'Could not launch ${widget.companyUrl}';
        }
      },
      child: MouseRegion(
        onEnter: (PointerEnterEvent event) {
          setState(() {
            iconSize = 15;
          });
        },
        onExit: (PointerExitEvent event) {
          setState(() {
            iconSize = 10;
          });
        },
        child: Row(
          children: [
            Text(
              widget.experienceTitle,
              style: GoogleFonts.inter(
                textStyle: const TextStyle(
                  fontWeight: FontWeight.w800,
                  fontSize: 16,
                  color: Color.fromRGBO(0, 0, 0, 0.6),
                ),
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            Icon(
              Icons.arrow_outward,
              size: iconSize,
            ),
          ],
        ),
      ),
    );
  }
}

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
