import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'colors.dart';

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
    elevation: .75,
  );
}

AppBar appBarWithLeading(String title, {Function? onPressed}) {
  return AppBar(
    // backgroundColor: Colors.white,
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

Text subText(
  String text, {
  FontWeight? fontWeight,
  Color? color,
  double? fontSize,
}) {
  return Text(
    text,
    style: GoogleFonts.poppins(
      fontWeight: fontWeight ?? FontWeight.w400,
      letterSpacing: .25,
      fontSize: fontSize ?? 16,
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
    style: GoogleFonts.raleway(
      fontWeight: FontWeight.w500,
      letterSpacing: .25,
      fontSize: 16,
    ),
  );
}

Text mainText14(String text) {
  return Text(
    text,
    style: GoogleFonts.raleway(
      fontWeight: FontWeight.w500,
      letterSpacing: .15,
      fontSize: 14,
    ),
  );
}

Widget buildTextField(
  String labelText,
  String placeholder,
  bool isPasswordTextField,
  bool uneditable,
  TextEditingController controller, {
  bool? isContact,
  bool showPassword = false,
}) {
  return Padding(
    padding: const EdgeInsets.only(top: 1.5, left: 5, right: 5, bottom: 7.5),
    child: TextFormField(
      readOnly: uneditable ? true : false,
      obscureText: isPasswordTextField ? true : false,
      controller: controller,
      keyboardType:
          isContact == true ? TextInputType.phone : TextInputType.text,
      decoration: InputDecoration(
        prefixIcon: isPasswordTextField
            ? const Icon(
                Icons.lock_outline_rounded,
                color: primaryColor,
                size: 20,
              )
            : isContact == true
                ? const Icon(
                    Icons.phone_in_talk_outlined,
                    color: primaryColor,
                    size: 20,
                  )
                : const Icon(
                    Icons.person_outline_outlined,
                    color: primaryColor,
                    size: 20,
                  ),
        suffixIcon: isPasswordTextField
            ? IconButton(
                onPressed: () {
                  showPassword = !showPassword;
                },
                icon: Icon(
                  Icons.remove_red_eye,
                  color: Colors.red[200],
                ),
              )
            : null, // * This makes the icon appear only for the password field
        contentPadding: const EdgeInsets.only(left: 15),
        labelText: labelText,
        // floatingLabelBehavior: FloatingLabelBehavior.always,
        hintText: placeholder,
        hintStyle: GoogleFonts.raleway(
          fontSize: 16,
          fontWeight: FontWeight.w500,
        ),
        labelStyle: GoogleFonts.raleway(
          fontSize: 16,
          fontWeight: FontWeight.w400,
          letterSpacing: .25,
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            width: 0.5,
          ),
          borderRadius: BorderRadius.circular(15),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: primaryColor.withOpacity(0.35),
            width: 1,
          ),
          borderRadius: BorderRadius.circular(15),
        ),
      ),
    ),
  );
}

Widget buildTextField1(
  String labelText,
  String placeholder,
  bool isPasswordTextField,
  bool uneditable,
  TextEditingController controller, {
  bool? isMoMo,
  bool? isAmount,
  bool showPassword = false,
}) {
  return Padding(
    padding: const EdgeInsets.only(top: 1.5, left: 5, right: 5, bottom: 7.5),
    child: TextFormField(
      readOnly: uneditable ? true : false,
      obscureText: isPasswordTextField ? true : false,
      controller: controller,
      keyboardType: TextInputType.phone,
      decoration: InputDecoration(
        prefixIcon: const Icon(
          Icons.money,
          color: primaryColor,
          size: 20,
        ),
        suffixIcon: isPasswordTextField
            ? IconButton(
                onPressed: () {
                  showPassword = !showPassword;
                },
                icon: Icon(
                  Icons.remove_red_eye,
                  color: Colors.red[200],
                ),
              )
            : null, // * This makes the icon appear only for the password field
        contentPadding: const EdgeInsets.only(left: 15),
        labelText: labelText,
        hintText: placeholder,
        hintStyle: GoogleFonts.raleway(
          fontSize: 16,
          fontWeight: FontWeight.w500,
        ),
        labelStyle: GoogleFonts.raleway(
          fontSize: 16,
          fontWeight: FontWeight.w400,
          letterSpacing: .25,
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            width: 0.5,
          ),
          borderRadius: BorderRadius.circular(15),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: primaryColor.withOpacity(0.35),
            width: 1,
          ),
          borderRadius: BorderRadius.circular(15),
        ),
      ),
    ),
  );
}
