import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';
import 'package:riders/Splash.dart';

import 'core/constants/theme.dart';

void main() {
  runApp(const Riders());
}

class Riders extends StatelessWidget {
  const Riders({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.dark,
      theme: FlexColorScheme.light(
        colors: lightTheme,
        useMaterial3ErrorColors: true,
      ).toTheme,
      darkTheme: FlexColorScheme.dark(
        colors: lightTheme.toDark(),
        useMaterial3ErrorColors: true,
      ).toTheme,
      home: const SplashScreen(),
    );
  }
}
