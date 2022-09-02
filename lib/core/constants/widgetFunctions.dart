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
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: children!,
      ),
    ),
  );
}
