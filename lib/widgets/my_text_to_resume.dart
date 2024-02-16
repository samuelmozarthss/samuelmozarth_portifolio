import 'dart:html';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OpenResume extends StatelessWidget {
  const OpenResume({super.key});

  void downloadFile() {
    final anchor = AnchorElement(
      href: 'files/resume.pdf',
    )
      ..setAttribute('download', 'CV - Samuel Mozarth - Dev Mobile.pdf')
      ..click();
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: downloadFile,
      child: Text(
        'Download my Resumé',
        style: GoogleFonts.inter(
          textStyle: const TextStyle(
            fontSize: 16,
            decoration: TextDecoration.underline,
          ),
        ),
      ),
    );
  }
}
