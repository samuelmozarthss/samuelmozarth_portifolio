import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'widgets/my_animated_menu.dart';
import 'widgets/my_strings.dart';
import 'widgets/my_tags_button.dart';
import 'widgets/social_media.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<MenuItem> menuItems = [
      MenuItem('ABOUT'),
      MenuItem('EXPERIENCE'),
      MenuItem('PROJECTS'),
    ];

    return MaterialApp(
      title: 'Samuel Mozarth',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(110),
          child: Row(
            children: [
              Expanded(
                flex: 1,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    //const HeaderTextsPtBR(),
                    const HeaderTextsEnUS(),
                    const SizedBox(
                      height: 45,
                    ),
                    Expanded(
                      child: Column(
                        children: [
                          MyAnimatedMenu(
                            menuItems: menuItems,
                          ),
                        ],
                      ),
                    ),
                    const SocialMedia()
                  ],
                ),
              ),
              const VerticalDivider(),
              Expanded(
                flex: 1,
                child: Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Column(
                    children: [
                      //AboutTextInPtBR(),
                      //AboutTextInEnUS(),

                      SizedBox(
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              '2018 - PRESENT',
                              style: GoogleFonts.inter(
                                textStyle: const TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 16,
                                  color: Color.fromRGBO(0, 0, 0, 0.6),
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 20,
                            ),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Mobile software engineer',
                                    style: GoogleFonts.inter(
                                      textStyle: const TextStyle(
                                        fontWeight: FontWeight.w800,
                                        fontSize: 16,
                                        color: Color.fromRGBO(0, 0, 0, 0.6),
                                      ),
                                    ),
                                  ),
                                  Text(
                                    'EBANX, Curitiba, Brazil',
                                    style: GoogleFonts.inter(
                                      textStyle: const TextStyle(
                                        fontWeight: FontWeight.w800,
                                        fontSize: 16,
                                        color: Color.fromRGBO(0, 0, 0, 0.6),
                                      ),
                                    ),
                                  ),
                                  Text(
                                    'Working in a multidisciplinary team, in the Mobile domain, using native and hybrid tools for Android and iOS platforms, in the EBANX Go and APP JUNO applications.',
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
                                  MyTagsButton()
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
