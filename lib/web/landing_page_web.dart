import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_flutter_portfolio/components.dart';

class LandingPageWeb extends StatefulWidget {
  const LandingPageWeb({super.key});

  @override
  State<LandingPageWeb> createState() => _LandingPageWebState();
}

class _LandingPageWebState extends State<LandingPageWeb> {
  @override
  Widget build(BuildContext context) {
    var heightDevice = MediaQuery.of(context).size.height;
    var widthDevice  = MediaQuery.of(context).size.width;
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
        iconTheme: IconThemeData(size: 25.0, color: Colors.black),
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
      body: ListView(
        children: [
          // First Section
          SizedBox(
            height: heightDevice - 56.0, // Subtracting AppBar height
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.tealAccent,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20.0),
                          topRight: Radius.circular(20.0),
                          bottomRight: Radius.circular(20.0),
                        ),
                      ),
                      padding: EdgeInsets.symmetric(
                        horizontal: 20.0,
                        vertical: 10.0,
                      ),
                      child: SansBold("Hello I'm", 15.0),
                    ),
                    SizedBox(height: 10.0),
                    SansBold("Chinmay Sahoo", 60.0),
                    SansBold("Flutter Developer", 30.0),
                    SizedBox(height: 15.0),
                    Row(
                      children: [
                        Icon(Icons.email),
                        SizedBox(width: 20),
                        Sans("chinmaysah@gmail.com", 15.0),
                      ],
                    ),
                    SizedBox(height: 10.0),
                    Row(
                      children: [
                        Icon(Icons.call),
                        SizedBox(width: 20),
                        Sans("+91 1234567892", 15.0),
                      ],
                    ),
                    SizedBox(height: 10.0),
                    Row(
                      children: [
                        Icon(Icons.location_pin),
                        SizedBox(width: 20),
                        Sans("679633", 15.0),
                      ],
                    ),
                  ],
                ),
                CircleAvatar(
                  radius: 147.0,
                  backgroundColor: Colors.tealAccent,
                  child: CircleAvatar(
                    radius: 143.0,
                    backgroundColor: Colors.black,
                    child: CircleAvatar(
                      radius: 140.0,
                      backgroundColor: Colors.white,
                      child: Image.asset("assets/myImage-circle.png"),
                      // backgroundImage: AssetImage("assets/myImage-circle.png"),
                    ),
                  ),
                ),
              ],
            ),
          ),
          // Second Section
          SizedBox(
            height: heightDevice / 1.5,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Flexible(
                  flex: 1,
                  child: Image.asset(
                    "assets/web.jpg",
                    height: heightDevice / 3.0,
                  ),
                ),
                SizedBox(width: 20.0),
                Flexible(
                  flex: 2,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SansBold("About Me", 40.0),
                      SizedBox(height: 20.0),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Sans(
                            "I am a Flutter developer with experience in building cross-platform mobile applications. I have a strong passion for creating beautiful and functional user interfaces using Flutter. I am proficient in Dart programming language and have experience working with various Flutter packages and plugins. I am also familiar with RESTful APIs, Firebase, and other backend technologies. I enjoy collaborating with designers and other developers to create seamless user experiences.",
                            18.0,
                          ),
                          SizedBox(height: 10.0),
                          Sans(
                            "I strive to ensure astounding performance with state of the art security for Android, Ios, Web, Mac, Linux and Windows.",
                            18.0,
                          ),
                          // Add more children here
                          SizedBox(height: 10.0),
                          Row(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Colors.tealAccent,
                                    style: BorderStyle.solid,
                                    width: 2.0,
                                  ),
                                  borderRadius: BorderRadius.circular(5.0),
                                ),
                                padding: EdgeInsets.all(7.0),
                                child: Sans("Flutter", 15.0),
                              ),
                              SizedBox(width: 10.0),
                              Container(
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Colors.tealAccent,
                                    style: BorderStyle.solid,
                                    width: 2.0,
                                  ),
                                  borderRadius: BorderRadius.circular(5.0),
                                ),
                                padding: EdgeInsets.all(7.0),
                                child: Sans("Firebase", 15.0),
                              ),
                              SizedBox(width: 10.0),
                              Container(
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Colors.tealAccent,
                                    style: BorderStyle.solid,
                                    width: 2.0,
                                  ),
                                  borderRadius: BorderRadius.circular(5.0),
                                ),
                                padding: EdgeInsets.all(7.0),
                                child: Sans("Android", 15.0),
                              ),
                              SizedBox(width: 10.0),
                              Container(
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Colors.tealAccent,
                                    style: BorderStyle.solid,
                                    width: 2.0,
                                  ),
                                  borderRadius: BorderRadius.circular(5.0),
                                ),
                                padding: EdgeInsets.all(7.0),
                                child: Sans("Ios", 15.0),
                              ),
                              SizedBox(width: 10.0),
                              Container(
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Colors.tealAccent,
                                    style: BorderStyle.solid,
                                    width: 2.0,
                                  ),
                                  borderRadius: BorderRadius.circular(5.0),
                                ),
                                padding: EdgeInsets.all(7.0),
                                child: Sans("Web", 15.0),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          // Third Section
          SizedBox(
            height: heightDevice / 1.3,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SansBold("What I do", 40.0),
                SizedBox(height: 20.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Card(
                      elevation: 30.0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      shadowColor: Colors.tealAccent,
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.asset(
                              "assets/webL.png",
                              height: 200,
                              width: 200,
                            ),
                            SizedBox(height: 10.0),
                            SansBold("Web development", 15),
                          ],
                        ),
                      ),
                    ),
                    Card(
                      elevation: 30.0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      shadowColor: Colors.tealAccent,
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.asset(
                              "assets/app.png",
                              height: 200,
                              width: 200,
                              fit: BoxFit.contain,
                            ),
                            SizedBox(height: 10.0),
                            SansBold("App development", 15),
                          ],
                        ),
                      ),
                    ),
                    Card(
                      elevation: 30.0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      shadowColor: Colors.tealAccent,
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.asset(
                              "assets/firebase.png",
                              height: 200,
                              width: 200,
                            ),
                            SizedBox(height: 10.0),
                            SansBold("Back-end development", 15),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          // Fourth section
          SizedBox(
            height: heightDevice,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SansBold("Contact Me", 40.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        TextForm(heading: "First Name", width: 350.0, hintText: "Enter first name"),
                        SizedBox(height: 5.0),
                        TextForm(heading: "Email", width: 350.0, hintText: "Enter email"),
                      ],
                    ),
                    Column(
                      children: [
                        TextForm(heading: "Last Name", width: 350.0, hintText: "Enter last name"),
                        SizedBox(height: 5.0),
                        TextForm(heading: "Phone number", width: 350.0, hintText: "Enter phone number"),
                      ],
                    ),
                  ],
                ),
                TextForm(
                  heading: "Message",
                  width: widthDevice/1.5,
                  hintText: "Enter your message",
                  maxLines: 5,
                ),
                MaterialButton(
                  elevation: 20.0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  height: 60.0,
                  minWidth: 200.0,
                  color: Colors.tealAccent,
                  child: SansBold("Submit", 20.0),
                  onPressed: () {},
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
