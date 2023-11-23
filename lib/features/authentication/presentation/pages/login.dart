import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../../core/constants/colors.dart';
import '../../../../../core/constants/widgetFunctions.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}


class _LoginState extends State<Login> {
  bool seePassword = true;
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final brightness = MediaQuery.of(context).platformBrightness;
    final isDarkMode = brightness == Brightness.light;

    return Scaffold(
      body: SafeArea(
        child: Container(
          decoration: const BoxDecoration(),
          margin: const EdgeInsets.only(left: 20, right: 20, top: 80),
          child: Form(
            child: SingleChildScrollView(
              padding: const EdgeInsets.only(top: 5, left: 35, right: 35),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.15,
                    child:
                        isDarkMode ? Image.asset('assets/images/logo.png') : Image.asset('assets/images/darkLogo.png'),
                  ),
                  Row(
                    children: [
                      Text(
                        'Log',
                        style: GoogleFonts.lato(
                          fontWeight: FontWeight.w700,
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
                      // color: Colors.black54,
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
                    padding: const EdgeInsets.only(
                      top: 1.5,
                      left: 5,
                      right: 5,
                      bottom: 7.5,
                    ),
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
                        hintText: 'Eg: *********',
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
                            // color: Colors.black54,
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
                      } else if (passwordController.text.length < 6) {
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
                        // await tryLogin(context);
                      }
                    },
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
    );
  }

  // Future<void> tryLogin(BuildContext context) async {
  //   final config = await AppConfig.forEnvironment(envVar);
  //   try {
  //     showDialog(
  //       context: context,
  //       builder: (context) => const ProgressDialog(
  //         displayMessage: 'Verifying...\nPlease wait...',
  //       ),
  //     );

  //     Response? response = await ApiService().postData(
  //       url: config.loginUrl,
  //       body: jsonEncode({
  //         'username': usernameController.text,
  //         'password': passwordController.text,
  //       }),
  //     );

  //     Future.delayed(const Duration(seconds: 1));
  //     if (response!.statusCode == 200) {
  //       var loginResponse = jsonDecode(response.body);
  //       logger.i('loginResponse: ${loginResponse}');
  //       accessToken = loginResponse['access'];
  //       refreshToken = loginResponse['refresh'];
  //       context.read<AuthProvider>().saveLoginResponseID(loginResponse['id']);
  //       final userDetails = loginResponse['user'];
  //       User user = User(
  //         id: userDetails['user']['id'],
  //         email: userDetails['user']['email'],
  //         gender: userDetails['user']['gender'],
  //         username: userDetails['user']['username'],
  //         last_name: userDetails['user']['last_name'],
  //         first_name: userDetails['user']['first_name'],
  //         phone_number: userDetails['user']['phone_number'],
  //       );

  //       logger.d('user: ${user.toJson()}');
  //       context.read<AuthProvider>().saveAccessToken(accessToken);
  //       context.read<AuthProvider>().saveRefreshToken(refreshToken);

  //       context.read<AuthProvider>().saveRiderDetails(user);
  //       logger.i('Access Token: $accessToken');
  //       username = usernameController.text.trim();
  //       Navigator.of(context, rootNavigator: true).pop();
  //       Navigator.pushReplacement(
  //         context,
  //         MaterialPageRoute(
  //           builder: (context) => Index(
  //             username: usernameController.text,
  //           ),
  //         ),
  //       );
  //       ScaffoldMessenger.of(context).showSnackBar(
  //         SnackBar(
  //           content: Text(
  //             'You have successfully logged in!',
  //             style: GoogleFonts.raleway(
  //               fontSize: 16,
  //               color: Colors.black,
  //             ),
  //           ),
  //           backgroundColor: Colors.teal[200],
  //         ),
  //       );
  //     } else {
  //       Navigator.of(context, rootNavigator: true).pop();
  //       var loginResponse = jsonDecode(response.body);
  //       print('Login Response: $loginResponse');
  //       ScaffoldMessenger.of(context).showSnackBar(
  //         SnackBar(
  //           content: Text(
  //             '${loginResponse['detail']}!',
  //             style: GoogleFonts.raleway(
  //               fontSize: 16,
  //               color: Colors.black,
  //             ),
  //           ),
  //           backgroundColor: Colors.red[200],
  //         ),
  //       );
  //     }
  //   } catch (e, stackTrace) {
  //     Navigator.of(context, rootNavigator: true).pop();
  //     print('$e\n $stackTrace');
  //     ScaffoldMessenger.of(context).showSnackBar(
  //       SnackBar(
  //         content: Text(
  //           'An error occurred! Please try again later!',
  //           style: GoogleFonts.raleway(
  //             fontSize: 16,
  //             color: Colors.black,
  //           ),
  //         ),
  //         backgroundColor: Colors.red[200],
  //       ),
  //     );
  //   }
  // }
}
