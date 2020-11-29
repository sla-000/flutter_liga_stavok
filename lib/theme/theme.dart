import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

ThemeData getAppTheme() {
  return ThemeData(
    primarySwatch: Colors.green,
    visualDensity: VisualDensity.adaptivePlatformDensity,
    textTheme: TextTheme(
      headline1: GoogleFonts.sourceSansPro(
        fontSize: 24,
        fontWeight: FontWeight.w600,
      ),
      headline2: GoogleFonts.sourceSansPro(
        fontSize: 22,
        fontWeight: FontWeight.w500,
      ),
      headline3: GoogleFonts.sourceSansPro(
        fontSize: 18,
        fontWeight: FontWeight.w400,
      ),
      headline4: GoogleFonts.sourceSansPro(
        fontSize: 16,
        fontWeight: FontWeight.w500,
      ),
      headline5: GoogleFonts.sourceSansPro(
        fontSize: 16,
        fontWeight: FontWeight.w400,
      ),
      headline6: GoogleFonts.sourceSansPro(
        fontSize: 16,
        fontWeight: FontWeight.w400,
      ),
      subtitle1: GoogleFonts.sourceSansPro(
        fontSize: 18,
        fontWeight: FontWeight.w300,
      ),
      subtitle2: GoogleFonts.sourceSansPro(
        fontSize: 16,
        fontWeight: FontWeight.w400,
      ),
      bodyText1: GoogleFonts.sourceSansPro(
        fontSize: 16,
        fontWeight: FontWeight.w400,
      ),
      bodyText2: GoogleFonts.sourceSansPro(
        fontSize: 16,
        fontWeight: FontWeight.w300,
      ),
      caption: GoogleFonts.sourceSansPro(
        fontSize: 18,
        fontWeight: FontWeight.w800,
      ),
      button: GoogleFonts.sourceSansPro(
        fontSize: 18,
        fontWeight: FontWeight.w900,
      ),
      overline: GoogleFonts.sourceSansPro(
        fontSize: 18,
        fontWeight: FontWeight.w700,
      ),
    ),
  );
}
