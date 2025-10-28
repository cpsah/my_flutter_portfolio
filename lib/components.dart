import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TabsWeb extends StatefulWidget {
  final String title;
  const TabsWeb(this.title, {super.key});

  @override
  State<TabsWeb> createState() => _TabsWebState();
}

class _TabsWebState extends State<TabsWeb> {
  bool isSelected = false;
  @override
  Widget build(BuildContext context) {
    /*
    The widget object in a State class (like _TabsWebState) is a property provided by Flutter.
    It gives you access to the current instance of the associated StatefulWidget (TabsWeb in this case).
    This allows you to access the widget’s fields (like title) from within the state class.
     */
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      onEnter: (_) {
        setState(() {
          isSelected = true;
        });
        // print("Hovering over ${widget.title}");
      },
      onExit: (_) {
        setState(() {
          isSelected = false;
        });
        // print("Stopped hovering over ${widget.title}");
      },
      child: AnimatedDefaultTextStyle(
        duration: const Duration(milliseconds: 100),
        curve: Curves.elasticIn,
        style: isSelected
            ? GoogleFonts.oswald(
                shadows: [Shadow(color: Colors.black, offset: Offset(0, -5))],
                color: Colors.transparent,
                fontSize: 25.0,
                fontWeight: FontWeight.w500,
                decoration: TextDecoration.underline,
                decorationThickness: 1,
                decorationColor: Colors.black,
              )
            : GoogleFonts.oswald(
                color: Colors.black,
                fontSize: 23.0,
                fontWeight: FontWeight.w500,
              ),
        child: Text(widget.title),
      ),
    );
  }
}
