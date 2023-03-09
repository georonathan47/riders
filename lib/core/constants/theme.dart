import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'colors.dart';

const lightTheme = FlexSchemeColor(primary: primaryColor, secondary: Colors.lightBlue);

var largeScreen = TextTheme(
  displayLarge: GoogleFonts.poppins(
    // color: white,
    letterSpacing: 1.25,
    fontWeight: FontWeight.w700,
    fontSize: 26,
  ),
  displayMedium: GoogleFonts.poppins(
    // color: white,
    letterSpacing: 1.25,
    fontWeight: FontWeight.w700,
    fontSize: 24,
  ),
  displaySmall: GoogleFonts.poppins(
    letterSpacing: 1.25,
    fontWeight: FontWeight.w700,
    fontSize: 22,
  ),
  headlineMedium: GoogleFonts.poppins(
    letterSpacing: 1.25,
    fontWeight: FontWeight.w700,
    fontSize: 20,
  ),
  bodyLarge: GoogleFonts.poppins(
    letterSpacing: 1.25,
    fontWeight: FontWeight.w700,
    fontSize: 18,
  ),
  bodyMedium: GoogleFonts.poppins(
    letterSpacing: 1.25,
    fontWeight: FontWeight.w700,
    fontSize: 16,
  ),
  titleMedium: GoogleFonts.poppins(
    letterSpacing: 1.25,
    fontWeight: FontWeight.w700,
    fontSize: 14,
  ),
  titleSmall: GoogleFonts.poppins(
    letterSpacing: 1.25,
    fontWeight: FontWeight.w700,
    fontSize: 12,
  ),
  labelLarge: GoogleFonts.raleway(
    letterSpacing: 1.25,
    fontWeight: FontWeight.w700,
    fontSize: 14,
  ),
);

var smallScreen = TextTheme(
  labelLarge: GoogleFonts.raleway(
    letterSpacing: 1.25,
    fontWeight: FontWeight.w700,
    fontSize: 14,
  ),
  displayLarge: GoogleFonts.poppins(
    letterSpacing: 1.25,
    fontWeight: FontWeight.w700,
    fontSize: 26,
  ),
  displayMedium: GoogleFonts.poppins(
    letterSpacing: 1.25,
    fontWeight: FontWeight.w700,
    fontSize: 22,
  ),
  displaySmall: GoogleFonts.poppins(
    letterSpacing: 1.25,
    fontWeight: FontWeight.w700,
    fontSize: 20,
  ),
  headlineMedium: GoogleFonts.poppins(
    letterSpacing: 1.25,
    fontWeight: FontWeight.w700,
    fontSize: 18,
  ),
  bodyLarge: GoogleFonts.poppins(
    letterSpacing: 1.25,
    fontWeight: FontWeight.w700,
    fontSize: 16,
  ),
  bodyMedium: GoogleFonts.poppins(
    letterSpacing: 1.25,
    fontWeight: FontWeight.w700,
    fontSize: 14,
  ),
  titleMedium: GoogleFonts.poppins(
    letterSpacing: 1.25,
    fontWeight: FontWeight.w700,
    fontSize: 14,
  ),
  titleSmall: GoogleFonts.poppins(
    letterSpacing: 1.25,
    fontWeight: FontWeight.w700,
    fontSize: 12,
  ),
);
