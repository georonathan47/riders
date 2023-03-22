import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';
import 'package:riders/core/constants/colors.dart';
import 'package:google_fonts/google_fonts.dart';

const lightTheme = FlexSchemeColor(primary: primaryColor, secondary: Colors.lightBlue);

var largeScreen = TextTheme(
  headline1: GoogleFonts.poppins(
    // color: white,
    letterSpacing: 1.25,
    fontWeight: FontWeight.w700,
    fontSize: 26,
  ),
  headline2: GoogleFonts.poppins(
    // color: white,
    letterSpacing: 1.25,
    fontWeight: FontWeight.w700,
    fontSize: 24,
  ),
  headline3: GoogleFonts.poppins(
    letterSpacing: 1.25,
    fontWeight: FontWeight.w700,
    fontSize: 22,
  ),
  headline4: GoogleFonts.poppins(
    letterSpacing: 1.25,
    fontWeight: FontWeight.w700,
    fontSize: 20,
  ),
  bodyText1: GoogleFonts.poppins(
    letterSpacing: 1.25,
    fontWeight: FontWeight.w700,
    fontSize: 18,
  ),
  bodyText2: GoogleFonts.poppins(
    letterSpacing: 1.25,
    fontWeight: FontWeight.w700,
    fontSize: 16,
  ),
  subtitle1: GoogleFonts.poppins(
    letterSpacing: 1.25,
    fontWeight: FontWeight.w700,
    fontSize: 14,
  ),
  subtitle2: GoogleFonts.poppins(
    letterSpacing: 1.25,
    fontWeight: FontWeight.w700,
    fontSize: 12,
  ),
  button: GoogleFonts.raleway(
    letterSpacing: 1.25,
    fontWeight: FontWeight.w700,
    fontSize: 14,
  ),
);

var smallScreen = TextTheme(
  button: GoogleFonts.raleway(
    letterSpacing: 1.25,
    fontWeight: FontWeight.w700,
    fontSize: 14,
  ),
  headline1: GoogleFonts.poppins(
    letterSpacing: 1.25,
    fontWeight: FontWeight.w700,
    fontSize: 26,
  ),
  headline2: GoogleFonts.poppins(
    letterSpacing: 1.25,
    fontWeight: FontWeight.w700,
    fontSize: 22,
  ),
  headline3: GoogleFonts.poppins(
    letterSpacing: 1.25,
    fontWeight: FontWeight.w700,
    fontSize: 20,
  ),
  headline4: GoogleFonts.poppins(
    letterSpacing: 1.25,
    fontWeight: FontWeight.w700,
    fontSize: 18,
  ),
  bodyText1: GoogleFonts.poppins(
    letterSpacing: 1.25,
    fontWeight: FontWeight.w700,
    fontSize: 16,
  ),
  bodyText2: GoogleFonts.poppins(
    letterSpacing: 1.25,
    fontWeight: FontWeight.w700,
    fontSize: 14,
  ),
  subtitle1: GoogleFonts.poppins(
    letterSpacing: 1.25,
    fontWeight: FontWeight.w700,
    fontSize: 14,
  ),
  subtitle2: GoogleFonts.poppins(
    letterSpacing: 1.25,
    fontWeight: FontWeight.w700,
    fontSize: 12,
  ),
);
