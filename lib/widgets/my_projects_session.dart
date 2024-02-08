import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyProjectsSession extends StatelessWidget {
  const MyProjectsSession({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            flex: 2,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                //Corrigir tamanho da imagem
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Image.asset('path_to_your_image'),
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
                    Container(),
                  ],
                ),
                Text(
                  'teste',
                  style: GoogleFonts.inter(
                    textStyle: const TextStyle(
                      fontWeight: FontWeight.w800,
                      fontSize: 16,
                      color: Color.fromRGBO(0, 0, 0, 0.6),
                    ),
                  ),
                ),
                Text(
                  'teste',
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
                const Wrap(
                  spacing: 10,
                  runSpacing: 10,
                ),
                const SizedBox(
                  width: 10,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
