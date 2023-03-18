import 'dart:async';

import 'package:avatar_glow/avatar_glow.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import 'core/constants/colors.dart';
import 'core/constants/widgetFunctions.dart';
import 'features/Generic/features/authentication/presentation/pages/login.dart';
import 'features/Generic/features/authentication/presentation/provider/authProvider.dart';
import 'index.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(
      const Duration(seconds: 5),
      // ? Implement check when integration is done!
      () {
        context.read<AuthProvider>().riderModel == null
            ? Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => const Login(),
                ),
              )
            : Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => const Index(),
                ),
              );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    Size deviceSize = MediaQuery.of(context).size;
    Brightness brightness = MediaQuery.of(context).platformBrightness;
    bool isDarkMode = brightness == Brightness.light;
    return Material(
      child: SizedBox(
        height: deviceSize.height,
        width: deviceSize.width,
        child: Center(
          child: Container(
            alignment: Alignment.center,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                AvatarGlow(
                  glowColor: primaryColor,
                  endRadius: 175,
                  repeat: true,
                  showTwoGlows: true,
                  child: isDarkMode
                      ? Image.asset(
                          'assets/images/logo.png',
                          height: deviceSize.height * 0.5,
                          width: deviceSize.width,
                        )
                      : Image.asset(
                          'assets/images/darkLogo.png',
                          height: deviceSize.height * 0.5,
                          width: deviceSize.width,
                        ),
                ),
                addVertical(deviceSize.height * 0.125),
                Column(
                  children: [
                    Text(
                      'Desserts to Door',
                      style: GoogleFonts.raleway(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    addVertical(deviceSize.height * 0.0125),
                    Text(
                      'RIDERS',
                      style: GoogleFonts.poppins(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
