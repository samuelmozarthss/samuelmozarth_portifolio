import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'widgets/my_animated_menu.dart';
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
          padding:
              const EdgeInsets.only(left: 48, top: 80, right: 48, bottom: 80),
          child: Row(
            children: [
              Expanded(
                flex: 1,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Samuel Mozarth',
                      style: GoogleFonts.inter(
                        textStyle: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 64,
                        ),
                      ),
                    ),
                    Text(
                      'Mobile Software Engineer',
                      style: GoogleFonts.inter(
                        textStyle: const TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 36,
                        ),
                      ),
                    ),
                    Text(
                      '"It is during the battle that we evolve."',
                      style: GoogleFonts.inter(
                        textStyle: const TextStyle(
                          fontSize: 24,
                          color: Color.fromRGBO(0, 0, 0, 0.6),
                        ),
                      ),
                    ),
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
                    SocialMedia()
                  ],
                ),
              ),
              const VerticalDivider(),
              const Expanded(
                flex: 1,
                child: Center(
                  child: Text(
                    'Metade 2',
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
