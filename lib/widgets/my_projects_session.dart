import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'my_taglinks.dart';

class MyProjectsSession extends StatefulWidget {
  const MyProjectsSession({super.key, required this.tagLinks});
  final Map<String, String> tagLinks;

  @override
  State<MyProjectsSession> createState() => _MyProjectsSessionState();
}

class _MyProjectsSessionState extends State<MyProjectsSession> {
  bool _isHovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
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
          child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Expanded(
              flex: 2,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  //Corrigir tamanho da imagem
                  width: 100,
                  height: 100,
                  decoration: BoxDecoration(
                    color: Colors.black45,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Image.asset('assets/images/img_project.png'),
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
                  Text(
                    'Juno app maintenance',
                    style: GoogleFonts.inter(
                      textStyle: const TextStyle(
                        fontWeight: FontWeight.w800,
                        fontSize: 16,
                        color: Color.fromRGBO(0, 0, 0, 0.6),
                      ),
                    ),
                  ),
                  Text(
                    'Fixing bugs, creating new releases, and more.',
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
                  Row(
                    children: [
                      const Icon(
                        Icons.star,
                        size: 16,
                        color: Colors.amber,
                      ),
                      Text(
                        '1.142',
                        style: GoogleFonts.inter(
                          textStyle: const TextStyle(
                            fontWeight: FontWeight.w200,
                            fontSize: 16,
                            color: Color.fromRGBO(0, 0, 0, 0.6),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  Wrap(
                    spacing: 10,
                    runSpacing: 10,
                    children: widget.tagLinks.entries.map((entry) {
                      return TagLinks(nameTag: entry.key, url: entry.value);
                    }).toList(),
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  RichText(
                    text: TextSpan(
                      style: DefaultTextStyle.of(context).style,
                      children: <TextSpan>[
                        TextSpan(
                          text: 'Designed in ',
                          style: GoogleFonts.inter(
                            textStyle: const TextStyle(
                              fontWeight: FontWeight.w200,
                              fontSize: 16,
                            ),
                          ),
                        ),
                        TextSpan(
                          text: 'Figma ',
                          style: GoogleFonts.inter(
                            textStyle: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          ),
                        ),
                        TextSpan(
                          text: 'Vand coded in ',
                          style: GoogleFonts.inter(
                            textStyle: const TextStyle(
                              fontWeight: FontWeight.w200,
                              fontSize: 16,
                            ),
                          ),
                        ),
                        TextSpan(
                          text: 'Visual Studio Code',
                          style: GoogleFonts.inter(
                            textStyle: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          ),
                        ),
                        TextSpan(
                          text: ', based on examples available on ',
                          style: GoogleFonts.inter(
                            textStyle: const TextStyle(
                              fontWeight: FontWeight.w200,
                              fontSize: 16,
                            ),
                          ),
                        ),
                        TextSpan(
                          text: 'Dribbble',
                          style: GoogleFonts.inter(
                            textStyle: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          ),
                        ),
                        TextSpan(
                          text: '. Developed with ',
                          style: GoogleFonts.inter(
                            textStyle: const TextStyle(
                              fontWeight: FontWeight.w200,
                              fontSize: 16,
                            ),
                          ),
                        ),
                        TextSpan(
                          text: 'Flutter web',
                          style: GoogleFonts.inter(
                            textStyle: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          ),
                        ),
                        TextSpan(
                          text: ', deployed with ',
                          style: GoogleFonts.inter(
                            textStyle: const TextStyle(
                              fontWeight: FontWeight.w200,
                              fontSize: 16,
                            ),
                          ),
                        ),
                        TextSpan(
                          text: 'Vercel',
                          style: GoogleFonts.inter(
                            textStyle: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          ),
                        ),
                        TextSpan(
                          text: '. All text is set in ',
                          style: GoogleFonts.inter(
                            textStyle: const TextStyle(
                              fontWeight: FontWeight.w200,
                              fontSize: 16,
                            ),
                          ),
                        ),
                        TextSpan(
                          text: 'Inter ',
                          style: GoogleFonts.inter(
                            textStyle: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          ),
                        ),
                        TextSpan(
                          text: 'font.',
                          style: GoogleFonts.inter(
                            textStyle: const TextStyle(
                              fontWeight: FontWeight.w200,
                              fontSize: 16,
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
