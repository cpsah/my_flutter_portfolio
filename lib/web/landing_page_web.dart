import 'package:flutter/material.dart';
import 'package:my_flutter_portfolio/components.dart';

class LandingPageWeb extends StatefulWidget {
  const LandingPageWeb({super.key});

  @override
  State<LandingPageWeb> createState() => _LandingPageWebState();
}

class _LandingPageWebState extends State<LandingPageWeb> {
  @override
  Widget build(BuildContext context) {
    /*
    Scaffold is a Flutter widget that provides a basic visual layout structure for an app.
    It includes standard UI elements like an app bar, drawer, floating action button, and a body for your main content.
    It helps organize the major layout components of a Material Design app.
     */
    return Scaffold(
      drawer: Drawer(),
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        iconTheme: IconThemeData(
          size: 25.0,
          color: Colors.black,
        ),
        title: Row(
          children: [
            Spacer(flex: 4),
            TabsWeb("Home"),
            Spacer(),
            TabsWeb("Works"),
            Spacer(),
            TabsWeb("Blog"),
            Spacer(),
            TabsWeb("About"),
            Spacer(),
            TabsWeb("Contact"),
            Spacer(flex: 4),
          ],
        ),
      ),
      body: CircleAvatar(
        radius: 103.0,
        backgroundColor: Colors.black,
        child: CircleAvatar(
          radius: 100.0,
          backgroundColor: Colors.white,
          child: Image.asset("assets/myImage-circle.png"),
          // backgroundImage: AssetImage("assets/myImage-circle.png"),
        ),
      ),
    );
  }
}
