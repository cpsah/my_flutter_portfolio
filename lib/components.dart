import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
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
            ? GoogleFonts.roboto(
                shadows: [Shadow(color: Colors.black, offset: Offset(0, -5))],
                color: Colors.transparent,
                fontSize: 25.0,
                fontWeight: FontWeight.w500,
                decoration: TextDecoration.underline,
                decorationThickness: 1.5,
                decorationColor: Colors.tealAccent,
              )
            : GoogleFonts.roboto(
                color: Colors.black,
                fontSize: 23.0,
                fontWeight: FontWeight.w500,
              ),
        child: Text(widget.title),
      ),
    );
  }
}

class SansBold extends StatelessWidget {
  final String text;
  final double size;
  const SansBold(this.text, this.size, {super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.openSans(fontSize: size, fontWeight: FontWeight.bold),
    );
  }
}

class Sans extends StatelessWidget {
  final String text;
  final double size;
  const Sans(this.text, this.size, {super.key});

  @override
  Widget build(BuildContext context) {
    return Text(text, style: GoogleFonts.openSans(fontSize: size));
  }
}

class TextForm extends StatelessWidget {
  final String heading;
  final double width;
  final String hintText;
  final int? maxLines;
  const TextForm({
    super.key,
    required this.heading,
    required this.width,
    required this.hintText,
    this.maxLines,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Sans(heading, 16.0),
        SizedBox(height: 5.0),
        SizedBox(
          width: width,
          child: TextFormField(
            /*inputFormatters: [
              LengthLimitingTextInputFormatter(200),
              FilteringTextInputFormatter.allow(
                RegExp(r'[a-zA-Z]', caseSensitive: false),
              ),
            ],*/
            maxLines: maxLines, // null means unlimited lines
            decoration: InputDecoration(
              hintText: hintText,
              hintStyle: GoogleFonts.poppins(fontSize: 14.0),
              focusedErrorBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.red),
                borderRadius: BorderRadius.all(Radius.circular(10.0)),
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.teal),
                borderRadius: BorderRadius.all(Radius.circular(10.0)),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.tealAccent, width: 2.0),
                borderRadius: BorderRadius.all(Radius.circular(10.0)),
              ),
            ),
            validator: (text) {
              if(RegExp("\\bsahi\\b", caseSensitive: false).hasMatch(text ?? '')) {
                return 'Inappropriate word detected';
              }
              if (text == null || text.isEmpty) {
                return 'Required field';
              }
              return null;
            },
            // autovalidateMode: AutovalidateMode.onUserInteraction, // better use on submit
          ),
        ),
      ],
    );
  }
}
