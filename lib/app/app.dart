import 'package:flutter/material.dart';
import 'package:flutterathome/screens/master/master_screen.dart';
import 'package:google_fonts/google_fonts.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      debugShowMaterialGrid: false,
      title: 'Flutter At Home',
      home: MasterScreen(),
      theme: ThemeData(
        buttonTheme: ButtonThemeData(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(24.0),
          ),
        ),
        textTheme: TextTheme(
          display4: GoogleFonts.passionOne(fontSize: 106, fontWeight: FontWeight.w300, letterSpacing: -1.5),
          display3: GoogleFonts.passionOne(fontSize: 66, fontWeight: FontWeight.w300, letterSpacing: -0.5),
          display2: GoogleFonts.passionOne(fontSize: 53, fontWeight: FontWeight.w400),
          display1: GoogleFonts.passionOne(fontSize: 38, fontWeight: FontWeight.w400, letterSpacing: 0.25),
          headline: GoogleFonts.passionOne(fontSize: 26, fontWeight: FontWeight.w400),
          title: GoogleFonts.passionOne(fontSize: 22, fontWeight: FontWeight.w500, letterSpacing: 0.15),
          subhead: GoogleFonts.passionOne(fontSize: 18, fontWeight: FontWeight.w400, letterSpacing: 0.15),
          subtitle: GoogleFonts.passionOne(fontSize: 15, fontWeight: FontWeight.w500, letterSpacing: 0.1),
          body1: GoogleFonts.poppins(fontSize: 15, fontWeight: FontWeight.w400, letterSpacing: 0.5),
          body2: GoogleFonts.poppins(fontSize: 13, fontWeight: FontWeight.w400, letterSpacing: 0.25),
          button: GoogleFonts.poppins(fontSize: 13, fontWeight: FontWeight.w500, letterSpacing: 1.25),
          caption: GoogleFonts.poppins(fontSize: 12, fontWeight: FontWeight.w400, letterSpacing: 0.4),
          overline: GoogleFonts.poppins(fontSize: 10, fontWeight: FontWeight.w400, letterSpacing: 1.5),
        ),
      ),
    );
  }
}
