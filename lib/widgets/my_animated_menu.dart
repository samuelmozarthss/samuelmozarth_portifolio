import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MenuItem {
  final String title;

  MenuItem(this.title);
}

class MyAnimatedMenu extends StatefulWidget {
  final List<MenuItem> menuItems;

  MyAnimatedMenu({required this.menuItems});

  @override
  _MyAnimatedMenuState createState() => _MyAnimatedMenuState();
}

class _MyAnimatedMenuState extends State<MyAnimatedMenu> {
  List<bool> isHoveredList = List.generate(3, (index) => false);
  int _activatedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(
        widget.menuItems.length,
        (index) => InkWell(
          overlayColor: MaterialStateColor.resolveWith((states) => Color(0)),
          onHover: (hover) {
            setState(() {
              isHoveredList[index] = hover;
            });
          },
          onTap: () {
            setState(() {
              _activatedIndex = index;
            });
          },
          enableFeedback: false,
          child: Row(
            children: [
              AnimatedContainer(
                duration: const Duration(milliseconds: 100),
                width: index == _activatedIndex
                    ? 120.0
                    : (isHoveredList[index] ? 120.0 : 60.0),
                height: 1.0,
                color: index == _activatedIndex
                    ? Colors.black
                    : (isHoveredList[index] ? Colors.black87 : Colors.black45),
              ),
              const SizedBox(width: 20.0),
              Text(
                widget.menuItems[index].title,
                style: GoogleFonts.inter(
                  textStyle: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 16,
                    color: index == _activatedIndex
                        ? Colors.black
                        : (isHoveredList[index]
                            ? Colors.black87
                            : Colors.black45),
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
