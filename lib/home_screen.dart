import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'widgets/my_animated_menu.dart';
import 'widgets/my_experience_session.dart';
import 'widgets/my_projects_session.dart';
import 'widgets/my_strings.dart';
import 'widgets/my_text_to_resume.dart';
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
              const Flexible(
                flex: 1,
                child: SingleChildScrollView(
                  child: Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Column(
                      children: [
                        /*
                        //AboutTextInPtBR(),
                        AboutTextInEnUS(),
                        SizedBox(
                          height: 60,
                        ),

                        //Montreal - Experience
                        MyExperienceSession(
                          companyUrl: 'montreal.com.br/',
                          experienceTitle: 'Mobile Systems Analyst',
                          employerName:
                              'MONTREAL INFORMATICA, Belo Horizonte, Brazil',
                          experienceDescription:
                              'Working on CAIXA Econômica Federal’s Mobile systems.',
                          experienceDate: '07/22 - PRESENT',
                          tagLinks: {
                            'Java': 'https://www.java.com/',
                            'Android': 'https://www.android.com/',
                            'Git': 'https://git-scm.com/',
                            'Azure': 'https://azure.microsoft.com/',
                            'RobotFramework': 'https://robotframework.org/',
                          },
                        ),

                        //Freelancer - Experience
                        MyExperienceSession(
                          companyUrl: 'samuelmozarth.com/',
                          experienceTitle: 'Mobile Developer - Freelancer',
                          employerName: 'FREELANCER, Brazilia, Brazil',
                          experienceDescription:
                              'Consulting, creation of Mobile layouts, maintenance of functions, etc.',
                          experienceDate: '08/21 - PRESENT',
                          tagLinks: {
                            'Dart': 'https://dart.dev/',
                            'Flutter': 'https://flutter.dev/',
                            'Kotlin': 'https://kotlinlang.org/',
                            'Java': 'https://www.java.com/',
                            'Android': 'https://www.android.com/',
                            'Swift': 'https://swift.org/',
                            'iOS': 'https://www.apple.com/ios/',
                            'Git': 'https://git-scm.com/',
                            'GitHub': 'github.com/samuelmozarthss',
                          },
                        ),
                        //EBANX - Experience
                        MyExperienceSession(
                          companyUrl: 'ebanx.com',
                          experienceTitle: 'Mobile software engineer',
                          employerName: 'EBANX, Curitiba, Brazil',
                          experienceDescription:
                              'Working in a multidisciplinary team, in the Mobile domain, using native and hybrid tools for Android and iOS platforms, in the EBANX Go and APP JUNO applications.',
                          experienceDate: '03/22 - 08/22',
                          tagLinks: {
                            'Dart': 'https://dart.dev/',
                            'Flutter': 'https://flutter.dev/',
                            'Kotlin': 'https://kotlinlang.org/',
                            'Java': 'https://www.java.com/',
                            'Android': 'https://www.android.com/',
                            'Swift': 'https://swift.org/',
                            'iOS': 'https://www.apple.com/ios/',
                            'Git': 'https://git-scm.com/',
                            'GitHub': 'github.com/samuelmozarthss',
                          },
                        ),
                        //FeelTech - Experience
                        MyExperienceSession(
                          companyUrl: 'feeltechrh.com.br/',
                          experienceTitle: 'Mentoring - Android',
                          employerName: 'FEELTECH, Santa Catarina, Brazil',
                          experienceDescription:
                              'Development of native Android Mobile projects.',
                          experienceDate: '09/21 - 02/22',
                          tagLinks: {
                            'Kotlin': 'https://kotlinlang.org/',
                            'Android': 'https://www.android.com/',
                            'Git': 'https://git-scm.com/',
                            'GitHub': 'github.com/samuelmozarthss',
                          },
                        ),
                        //Diatech - Experience
                        MyExperienceSession(
                          companyUrl: 'diatechsistemas.com.br/',
                          experienceTitle: 'Support analyst',
                          employerName: 'DIATECH SISTEMAS, Brazilia, Brazil',
                          experienceDescription:
                              'Maintenance of created solutions.',
                          experienceDate: '01/19 - 08/21',
                          tagLinks: {
                            'Firebird': 'https://firebirdsql.org/',
                            'Joomla': 'https://www.joomla.org/',
                          },
                        ),

                        SizedBox(
                          height: 60,
                        ),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: OpenResume(),
                        ),
                        */
                        MyProjectsSession(tagLinks: {
                          '<3': 'https://dart.dev/',
                        }),
                        SizedBox(
                          height: 50,
                        ),
                        MyFooterSessionEn()
                      ],
                    ),
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
