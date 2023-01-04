import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../core/constants/colors.dart';
import '../../../../core/constants/widgetFunctions.dart';
import '../../../core/services/apiService.dart';
import '../../../index.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

String refreshToken = '';

class _LoginState extends State<Login> {
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();
  bool seePassword = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF3F3F3),
      body: SafeArea(
        child: Container(
          decoration: const BoxDecoration(),
          margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 80),
          child: Padding(
            padding: const EdgeInsets.only(top: 40),
            child: Form(
              child: SingleChildScrollView(
                padding: const EdgeInsets.only(top: 5, left: 35, right: 35),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.125,
                      child: Image.asset('assets/images/logo.png'),
                    ),
                    Row(
                      children: [
                        Text(
                          'Log',
                          style: GoogleFonts.lato(
                            fontWeight: FontWeight.w700,
                            color: Colors.black,
                            fontSize: 40,
                          ),
                        ),
                        addHorizontal(2.5),
                        Text(
                          'In',
                          style: GoogleFonts.lato(
                            fontWeight: FontWeight.w700,
                            color: primaryColor,
                            fontSize: 40,
                          ),
                        ),
                      ],
                    ),
                    addVertical(7.5),
                    Text(
                      'Enter credentials to continue!',
                      style: GoogleFonts.lato(
                        fontWeight: FontWeight.w400,
                        color: Colors.black54,
                        fontSize: 20,
                      ),
                    ),
                    addVertical(MediaQuery.of(context).size.height * 0.075),
                    buildTextField(
                      'Username',
                      'Eg: Kofi Dessert',
                      false,
                      false,
                      usernameController,
                      isContact: false,
                    ),
                    addVertical(10),
                    Padding(
                      padding: const EdgeInsets.only(top: 1.5, left: 5, right: 5, bottom: 7.5),
                      child: TextFormField(
                        readOnly: false,
                        obscureText: seePassword,
                        controller: passwordController,
                        keyboardType: TextInputType.text,
                        decoration: InputDecoration(
                          prefixIcon: const Icon(
                            Icons.lock_outline_rounded,
                            color: primaryColor,
                            size: 20,
                          ),

                          suffixIcon: IconButton(
                            onPressed: () {
                              setState(() {
                                seePassword = !seePassword;
                              });
                            },
                            icon: seePassword == true
                                ? Icon(
                                    Icons.remove_red_eye_outlined,
                                    color: Colors.red[200],
                                  )
                                : Icon(
                                    Icons.remove_red_eye,
                                    color: Colors.red[200],
                                  ),
                          ),
                          contentPadding: const EdgeInsets.only(left: 15),
                          labelText: 'Password',
                          // floatingLabelBehavior: FloatingLabelBehavior.always,
                          hintText: 'Eg: *********',
                          hintStyle: GoogleFonts.raleway(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: Colors.black54,
                          ),
                          labelStyle: GoogleFonts.raleway(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: Colors.black,
                            letterSpacing: .25,
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: const BorderSide(color: Colors.black54, width: 0.5),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: const BorderSide(color: primaryColor, width: 1),
                            borderRadius: BorderRadius.circular(15),
                          ),
                        ),
                      ),
                    ),
                    addVertical(30),
                    ElevatedButton(
                      onPressed: () async {
                        if (usernameController.text.isEmpty && passwordController.text.isEmpty) {
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content: Text(
                                'Please enter your credentials!',
                                style: GoogleFonts.raleway(
                                  fontSize: 16,
                                  color: Colors.black,
                                ),
                              ),
                              backgroundColor: Colors.red[200],
                            ),
                          );
                        } else if (passwordController.text == '') {
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content: Text(
                                'Please enter your password!',
                                style: GoogleFonts.raleway(
                                  fontSize: 16,
                                  color: Colors.black,
                                ),
                              ),
                              backgroundColor: Colors.red[200],
                            ),
                          );
                        } else if (usernameController.text.length < 6) {
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content: Text(
                                'Please make sure your password has at least 6 characters!',
                                style: GoogleFonts.raleway(
                                  fontSize: 16,
                                  color: Colors.black,
                                ),
                              ),
                              backgroundColor: Colors.red[200],
                            ),
                          );
                        } else {
                          await tryLogin(context);
                        }
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: primaryColor,
                        padding: const EdgeInsets.symmetric(vertical: 15),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                      child: Text(
                        'Log In',
                        style: GoogleFonts.lato(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Future<void> tryLogin(BuildContext context) async {
    await ApiService()
        .login(
      usernameController.text.trim(),
      passwordController.text.trim(),
    )
        .then(
      (value) {
        print('Refresh Token: $refreshToken');
        if (value.statusCode == 201) {
          refreshToken = value.body[0];
          print('Refresh Token: $refreshToken');
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => const Index(),
            ),
          );
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(
                'You have successfully logged in!',
                style: GoogleFonts.raleway(
                  fontSize: 16,
                  color: Colors.black,
                ),
              ),
              backgroundColor: Colors.teal[200],
            ),
          );
        } else {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(
                'An error occurred! Please try again later!',
                style: GoogleFonts.raleway(
                  fontSize: 16,
                  color: Colors.black,
                ),
              ),
              backgroundColor: Colors.red[200],
            ),
          );
        }
      },
    );
  }
}
