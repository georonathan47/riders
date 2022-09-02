import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

SizedBox addVertical(double height) {
  return SizedBox(
    height: height,
  );
}

SizedBox addHorizontal(double width) {
  return SizedBox(
    width: width,
  );
}

AppBar appBar(String title) {
  return AppBar(
    title: Text(
      title,
      style: GoogleFonts.poppins(),
    ),
  );
}

AppBar appBarWithLeading(String title, {Function? onPressed}) {
  return AppBar(
    backgroundColor: Colors.white,
    elevation: 0.75,
    leading: Builder(
      builder: (context) => IconButton(
        icon: const Icon(Icons.menu, color: Colors.black),
        onPressed: () => onPressed!,
      ),
    ),
    title: Text(
      title,
      style: GoogleFonts.poppins(),
    ),
  );
}

Container screenBody(Size size, {List<Widget>? children}) {
  return Container(
    height: size.height,
    decoration: const BoxDecoration(),
    child: SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: children!,
      ),
    ),
  );
}

Text subText(String text, {FontWeight? fontWeight, Color? color}) {
  return Text(
    text,
    style: GoogleFonts.poppins(
      fontWeight: FontWeight.w400,
      letterSpacing: .25,
      fontSize: 16,
    ),
  );
}

Text mainText(String text) {
  return Text(
    text,
    style: GoogleFonts.poppins(
      fontWeight: FontWeight.w600,
      letterSpacing: .25,
      fontSize: 18,
    ),
  );
}

Text mainText16(String text) {
  return Text(
    text,
    style: GoogleFonts.poppins(
      fontWeight: FontWeight.w500,
      letterSpacing: .25,
      fontSize: 16,
    ),
  );
}
