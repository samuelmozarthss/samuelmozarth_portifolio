import 'package:flutter/material.dart';

class MyButton extends StatefulWidget {
  @override
  _MyButtonState createState() => _MyButtonState();
}

class _MyButtonState extends State<MyButton> {
  bool isHovered = false;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onHover: (hover) {
        setState(() {
          isHovered = hover;
        });
      },
      onTap: () {
        // Ação ao clicar no botão
      },
      enableFeedback: false,
      child: SizedBox(
        height: 40.0,
        child: Row(
          children: [
            AnimatedContainer(
              duration: const Duration(milliseconds: 300),
              width: isHovered ? 120.0 : 60.0,
              height: 1.0,
              color: Colors.black,
            ),
            const SizedBox(width: 5.0),
            AnimatedContainer(
              duration: const Duration(milliseconds: 300),
              transform: Matrix4.translationValues(
                isHovered ? 60.0 : 0.0,
                0.0,
                0.0,
              ),
              child: Text(
                'Meu Botão',
                style: TextStyle(
                  color: isHovered ? Colors.black45 : Colors.black,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
