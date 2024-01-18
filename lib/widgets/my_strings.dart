import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HeaderTextsPtBR extends StatelessWidget {
  const HeaderTextsPtBR({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Samuel Mozarth',
          style: GoogleFonts.inter(
            textStyle: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 48,
            ),
          ),
        ),
        Text(
          'Engenheiro de Software Mobile',
          style: GoogleFonts.inter(
            textStyle: const TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 20,
            ),
          ),
        ),
        Text(
          '"É durante a batalha que evoluímos."',
          style: GoogleFonts.inter(
            textStyle: const TextStyle(
              fontSize: 16,
              color: Color.fromRGBO(0, 0, 0, 0.6),
            ),
          ),
        ),
      ],
    );
  }
}

class HeaderTextsEnUS extends StatelessWidget {
  const HeaderTextsEnUS({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Samuel Mozarth',
          style: GoogleFonts.inter(
            textStyle: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 48,
            ),
          ),
        ),
        Text(
          'Mobile Software Engineer',
          style: GoogleFonts.inter(
            textStyle: const TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 20,
            ),
          ),
        ),
        Text(
          '"It is during the battle that we evolve."',
          style: GoogleFonts.inter(
            textStyle: const TextStyle(
              fontSize: 16,
              color: Color.fromRGBO(0, 0, 0, 0.6),
            ),
          ),
        ),
      ],
    );
  }
}

class AboutTextInPtBR extends StatelessWidget {
  const AboutTextInPtBR({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        style: DefaultTextStyle.of(context).style,
        children: <TextSpan>[
          TextSpan(
            text:
                'Incentivado pela vontade de personalizar elementos de jogos que joguei na adolescência, ingressei na área de ',
            style: GoogleFonts.inter(
              textStyle: const TextStyle(
                fontWeight: FontWeight.w200,
                fontSize: 16,
              ),
            ),
          ),
          TextSpan(
            text: 'T.I. ',
            style: GoogleFonts.inter(
              textStyle: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
          ),
          TextSpan(
            text: 'em ',
            style: GoogleFonts.inter(
              textStyle: const TextStyle(
                fontWeight: FontWeight.w200,
                fontSize: 16,
              ),
            ),
          ),
          TextSpan(
            text: '2016 ',
            style: GoogleFonts.inter(
              textStyle: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
          ),
          TextSpan(
            text:
                'para ver até onde a programação e o desenvolvimento mobile me levariam.\n\nAvançando rapidamente até hoje, tive o privilégio de participar do desenvolvimento de softwares, como o ',
            style: GoogleFonts.inter(
              textStyle: const TextStyle(
                fontWeight: FontWeight.w200,
                fontSize: 16,
              ),
            ),
          ),
          TextSpan(
            text: 'AppJuno ',
            style: GoogleFonts.inter(
              textStyle: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
          ),
          TextSpan(
            text: 'e o ',
            style: GoogleFonts.inter(
              textStyle: const TextStyle(
                fontWeight: FontWeight.w200,
                fontSize: 16,
              ),
            ),
          ),
          TextSpan(
            text: 'EbanxGo',
            style: GoogleFonts.inter(
              textStyle: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
          ),
          TextSpan(
            text: ', em linguagens ',
            style: GoogleFonts.inter(
              textStyle: const TextStyle(
                fontWeight: FontWeight.w200,
                fontSize: 16,
              ),
            ),
          ),
          TextSpan(
            text: 'híbridas ',
            style: GoogleFonts.inter(
              textStyle: const TextStyle(
                fontWeight: FontWeight.w200,
                fontSize: 16,
              ),
            ),
          ),
          TextSpan(
            text: 'e ',
            style: GoogleFonts.inter(
              textStyle: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
          ),
          TextSpan(
            text: 'nativas',
            style: GoogleFonts.inter(
              textStyle: const TextStyle(
                fontWeight: FontWeight.w200,
                fontSize: 16,
              ),
            ),
          ),
          TextSpan(
            text: ', além de contribuir para as plataformas do ',
            style: GoogleFonts.inter(
              textStyle: const TextStyle(
                fontWeight: FontWeight.w200,
                fontSize: 16,
              ),
            ),
          ),
          TextSpan(
            text: 'Caixa Internet Banking, Caixa Tem e outros',
            style: GoogleFonts.inter(
              textStyle: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
          ),
          TextSpan(
            text:
                ', participando ativamente dos processos de controle de qualidade de software.\n\nAtualmente, meu foco principal está no âmbito ',
            style: GoogleFonts.inter(
              textStyle: const TextStyle(
                fontWeight: FontWeight.w200,
                fontSize: 16,
              ),
            ),
          ),
          TextSpan(
            text: 'Mobile',
            style: GoogleFonts.inter(
              textStyle: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
          ),
          TextSpan(
            text: ', com projetos ',
            style: GoogleFonts.inter(
              textStyle: const TextStyle(
                fontWeight: FontWeight.w200,
                fontSize: 16,
              ),
            ),
          ),
          TextSpan(
            text: 'híbridos ',
            style: GoogleFonts.inter(
              textStyle: const TextStyle(
                fontWeight: FontWeight.w200,
                fontSize: 16,
              ),
            ),
          ),
          TextSpan(
            text: 'e ',
            style: GoogleFonts.inter(
              textStyle: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
          ),
          TextSpan(
            text: 'nativos',
            style: GoogleFonts.inter(
              textStyle: const TextStyle(
                fontWeight: FontWeight.w200,
                fontSize: 16,
              ),
            ),
          ),
          TextSpan(
            text:
                '. No meu tempo livre, gosto de brincar com a criação de aplicativos que seriam úteis para o meu dia a dia.\n\nQuando não estou no computador, geralmente estou me divertindo com minha ',
            style: GoogleFonts.inter(
              textStyle: const TextStyle(
                fontWeight: FontWeight.w200,
                fontSize: 16,
              ),
            ),
          ),
          TextSpan(
            text: 'família ',
            style: GoogleFonts.inter(
              textStyle: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
          ),
          TextSpan(
            text: 'e ',
            style: GoogleFonts.inter(
              textStyle: const TextStyle(
                fontWeight: FontWeight.w200,
                fontSize: 16,
              ),
            ),
          ),
          TextSpan(
            text: 'amigos',
            style: GoogleFonts.inter(
              textStyle: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
          ),
          TextSpan(
            text: ', brincando com meus ',
            style: GoogleFonts.inter(
              textStyle: const TextStyle(
                fontWeight: FontWeight.w200,
                fontSize: 16,
              ),
            ),
          ),
          TextSpan(
            text: 'dois cachorros',
            style: GoogleFonts.inter(
              textStyle: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
          ),
          TextSpan(
            text: ', fazendo trilhas ou correndo atrás de ',
            style: GoogleFonts.inter(
              textStyle: const TextStyle(
                fontWeight: FontWeight.w200,
                fontSize: 16,
              ),
            ),
          ),
          TextSpan(
            text: 'belas cafeterias',
            style: GoogleFonts.inter(
              textStyle: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
          ),
          TextSpan(
            text: 'e bons ',
            style: GoogleFonts.inter(
              textStyle: const TextStyle(
                fontWeight: FontWeight.w200,
                fontSize: 16,
              ),
            ),
          ),
          TextSpan(
            text: 'grãos de café',
            style: GoogleFonts.inter(
              textStyle: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
          ),
          TextSpan(
            text: '.',
            style: GoogleFonts.inter(
              textStyle: const TextStyle(
                fontWeight: FontWeight.w200,
                fontSize: 16,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class AboutTextInEnUS extends StatelessWidget {
  const AboutTextInEnUS({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        style: DefaultTextStyle.of(context).style,
        children: <TextSpan>[
          TextSpan(
            text:
                'Encouraged by the desire to customize elements of games I played in adolescence, I entered the ',
            style: GoogleFonts.inter(
              textStyle: const TextStyle(
                fontWeight: FontWeight.w200,
                fontSize: 16,
              ),
            ),
          ),
          TextSpan(
            text: 'I.T. ',
            style: GoogleFonts.inter(
              textStyle: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
          ),
          TextSpan(
            text: 'field in ',
            style: GoogleFonts.inter(
              textStyle: const TextStyle(
                fontWeight: FontWeight.w200,
                fontSize: 16,
              ),
            ),
          ),
          TextSpan(
            text: '2016 ',
            style: GoogleFonts.inter(
              textStyle: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
          ),
          TextSpan(
            text:
                'to see where programming and mobile development would take me.\n\nAdvancing quickly to today, I had the privilege of participating in the development of software, such as the ',
            style: GoogleFonts.inter(
              textStyle: const TextStyle(
                fontWeight: FontWeight.w200,
                fontSize: 16,
              ),
            ),
          ),
          TextSpan(
            text: 'AppJuno ',
            style: GoogleFonts.inter(
              textStyle: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
          ),
          TextSpan(
            text: 'and ',
            style: GoogleFonts.inter(
              textStyle: const TextStyle(
                fontWeight: FontWeight.w200,
                fontSize: 16,
              ),
            ),
          ),
          TextSpan(
            text: 'EbanxGo',
            style: GoogleFonts.inter(
              textStyle: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
          ),
          TextSpan(
            text: ', in ',
            style: GoogleFonts.inter(
              textStyle: const TextStyle(
                fontWeight: FontWeight.w200,
                fontSize: 16,
              ),
            ),
          ),
          TextSpan(
            text: 'hybrid ',
            style: GoogleFonts.inter(
              textStyle: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
          ),
          TextSpan(
            text: 'and ',
            style: GoogleFonts.inter(
              textStyle: const TextStyle(
                fontWeight: FontWeight.w200,
                fontSize: 16,
              ),
            ),
          ),
          TextSpan(
            text: 'native ',
            style: GoogleFonts.inter(
              textStyle: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
          ),
          TextSpan(
            text: 'languages, in addition to contributing to platforms like ',
            style: GoogleFonts.inter(
              textStyle: const TextStyle(
                fontWeight: FontWeight.w200,
                fontSize: 16,
              ),
            ),
          ),
          TextSpan(
            text: 'Caixa Internet Banking, Caixa Tem, and others',
            style: GoogleFonts.inter(
              textStyle: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
          ),
          TextSpan(
            text:
                ', actively participating in software quality control processes.\n\nCurrently, my main focus is in the ',
            style: GoogleFonts.inter(
              textStyle: const TextStyle(
                fontWeight: FontWeight.w200,
                fontSize: 16,
              ),
            ),
          ),
          TextSpan(
            text: 'Mobile ',
            style: GoogleFonts.inter(
              textStyle: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
          ),
          TextSpan(
            text: 'realm, with ',
            style: GoogleFonts.inter(
              textStyle: const TextStyle(
                fontWeight: FontWeight.w200,
                fontSize: 16,
              ),
            ),
          ),
          TextSpan(
            text: 'hybrid ',
            style: GoogleFonts.inter(
              textStyle: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
          ),
          TextSpan(
            text: 'and ',
            style: GoogleFonts.inter(
              textStyle: const TextStyle(
                fontWeight: FontWeight.w200,
                fontSize: 16,
              ),
            ),
          ),
          TextSpan(
            text: 'native ',
            style: GoogleFonts.inter(
              textStyle: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
          ),
          TextSpan(
            text:
                'projects. In my free time, I enjoy playing around with creating apps that would be useful for my day-to-day.\n\nWhen I am not at the computer, I am usually having fun with my ',
            style: GoogleFonts.inter(
              textStyle: const TextStyle(
                fontWeight: FontWeight.w200,
                fontSize: 16,
              ),
            ),
          ),
          TextSpan(
            text: 'family ',
            style: GoogleFonts.inter(
              textStyle: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
          ),
          TextSpan(
            text: 'and ',
            style: GoogleFonts.inter(
              textStyle: const TextStyle(
                fontWeight: FontWeight.w200,
                fontSize: 16,
              ),
            ),
          ),
          TextSpan(
            text: 'friends',
            style: GoogleFonts.inter(
              textStyle: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
          ),
          TextSpan(
            text: ', playing with my ',
            style: GoogleFonts.inter(
              textStyle: const TextStyle(
                fontWeight: FontWeight.w200,
                fontSize: 16,
              ),
            ),
          ),
          TextSpan(
            text: 'two dogs',
            style: GoogleFonts.inter(
              textStyle: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
          ),
          TextSpan(
            text: ', hiking, or chasing after ',
            style: GoogleFonts.inter(
              textStyle: const TextStyle(
                fontWeight: FontWeight.w200,
                fontSize: 16,
              ),
            ),
          ),
          TextSpan(
            text: 'beautiful cafes ',
            style: GoogleFonts.inter(
              textStyle: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
          ),
          TextSpan(
            text: 'and good ',
            style: GoogleFonts.inter(
              textStyle: const TextStyle(
                fontWeight: FontWeight.w200,
                fontSize: 16,
              ),
            ),
          ),
          TextSpan(
            text: 'coffee beans',
            style: GoogleFonts.inter(
              textStyle: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
          ),
          TextSpan(
            text: '.',
            style: GoogleFonts.inter(
              textStyle: const TextStyle(
                fontWeight: FontWeight.w200,
                fontSize: 16,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
