import 'package:flutter/material.dart';

import 'widgets/my_animated_menu.dart';
import 'widgets/my_strings.dart';
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
              const Expanded(
                flex: 1,
                child: Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Column(
                    children: [
                      //AboutTextInPtBR(),
                      AboutTextInEnUS(),
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
