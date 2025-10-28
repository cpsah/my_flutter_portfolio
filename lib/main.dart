import 'package:flutter/material.dart';
import 'package:my_flutter_portfolio/mobile/landing_page_mobile.dart';
import 'package:my_flutter_portfolio/web/landing_page_web.dart';

void main() {
  runApp(const MyApp());
}

// StatelessWidget sets up the app’s theme and navigation, which do not change during runtime
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      /*
      LayoutBuilder lets you build a widget tree based on the parent widget’s size constraints.
      It provides the current BoxConstraints to its builder function,
      allowing you to create responsive layouts that adapt to different screen sizes or orientations.
       */
      home: LayoutBuilder(
        // constraints are the height and width of the widget
          builder: (context, constraints) {
            if(constraints.maxWidth>768) {
              return LandingPageWeb();
            } else {
              return LandingPageMobile();
            }
          }
      )
    );
  }
}
