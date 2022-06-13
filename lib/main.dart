import 'package:flutter/material.dart';
import 'package:kor_kue_tech/constance.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kor_kue_tech/login_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Kor Kue App',
        theme: ThemeData(
          primaryColor: primaryColor,
          backgroundColor: backgroundColor,
          textTheme: TextTheme(
            headline1: GoogleFonts.ibmPlexSansThai(
                fontSize: 99, fontWeight: FontWeight.w300, letterSpacing: -1.5),
            headline2: GoogleFonts.ibmPlexSansThai(
                fontSize: 62, fontWeight: FontWeight.w300, letterSpacing: -0.5),
            headline3: GoogleFonts.ibmPlexSansThai(
                fontSize: 49, fontWeight: FontWeight.w400),
            headline4: GoogleFonts.ibmPlexSansThai(
                fontSize: 35, fontWeight: FontWeight.w400, letterSpacing: 0.25),
            headline5: GoogleFonts.ibmPlexSansThai(
                fontSize: 25, fontWeight: FontWeight.w400),
            headline6: GoogleFonts.ibmPlexSansThai(
                fontSize: 21, fontWeight: FontWeight.w500, letterSpacing: 0.15),
            subtitle1: GoogleFonts.ibmPlexSansThai(
                fontSize: 16, fontWeight: FontWeight.w500, letterSpacing: 0.15),
            subtitle2: GoogleFonts.ibmPlexSansThai(
                fontSize: 14, fontWeight: FontWeight.w500, letterSpacing: 0.1),
            bodyText1: GoogleFonts.sarabun(
                fontSize: 30, fontWeight: FontWeight.w400, letterSpacing: 0.5),
            bodyText2: GoogleFonts.sarabun(
                fontSize: 20, fontWeight: FontWeight.w400, letterSpacing: 0.25),
            button: GoogleFonts.sarabun(
                fontSize: 20, fontWeight: FontWeight.w500, letterSpacing: 1.25),
            caption: GoogleFonts.sarabun(
                fontSize: 13, fontWeight: FontWeight.w400, letterSpacing: 0.4),
            overline: GoogleFonts.sarabun(
                fontSize: 11, fontWeight: FontWeight.w400, letterSpacing: 1.5),
          ),
        ),
        home: LoginScreen());
  }
}
