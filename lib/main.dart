import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import 'Splash.dart';
import 'core/constants/colors.dart';
import 'core/utils/appConfig.dart';

dynamic envVar;

void main({String? env}) async {
  WidgetsFlutterBinding.ensureInitialized();

  env ??= 'dev';
  print('Working from the $env environment');
  final config = await AppConfig.forEnvironment(env);
  envVar = config.env;
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => AppConfig(
            env: config.env,
            version: config.version,
            baseUrl: config.baseUrl,
            loginUrl: config.loginUrl,
            logoutUrl: config.logoutUrl,
            registerUrl: config.registerUrl,
            approvalUrl: config.approvalUrl,
            ridersUrl: config.ridersUrl,
          ),
        ),
      ],
      child: Riders(config: config),
    ),
  );
}

class Riders extends StatelessWidget {
  final AppConfig config;
  const Riders({Key? key, required this.config}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.system,
      theme: ThemeData(
        brightness: Brightness.light,
        primaryColor: primaryColor,
        scaffoldBackgroundColor: backgroundColor,
        drawerTheme: const DrawerThemeData(
          elevation: 0,
          backgroundColor: Color(0xFFf8f7fd),
        ),
        appBarTheme: AppBarTheme(
          elevation: 0.5,
          backgroundColor: Colors.white,
          iconTheme: const IconThemeData(color: Color(0xFF010105)),
          systemOverlayStyle: SystemUiOverlayStyle.dark,
          toolbarTextStyle: TextTheme(
            titleLarge: GoogleFonts.raleway(
              color: Colors.black,
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
          ).bodyMedium,
          titleTextStyle: TextTheme(
            titleLarge: GoogleFonts.raleway(
              color: Colors.black,
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
          ).titleLarge,
        ),
        textTheme: TextTheme(
          headlineMedium: GoogleFonts.raleway(
            fontSize: 16,
            fontWeight: FontWeight.w600,
            color: Colors.grey.shade900,
          ),
          bodyMedium: GoogleFonts.raleway(
            fontSize: 14,
            color: Colors.grey.shade900,
          ),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            elevation: 0.5,
            backgroundColor: primaryColor,
            padding: const EdgeInsets.fromLTRB(18, 10, 18, 10),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
          ),
        ),
        iconTheme: const IconThemeData(color: secondColor),
        // colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.green)
        // .copyWith(background: Colors.white),
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: primaryColor,
        scaffoldBackgroundColor: const Color.fromARGB(255, 42, 41, 43),
        primaryIconTheme: const IconThemeData(color: primaryColor),
        drawerTheme: const DrawerThemeData(
          elevation: 0,
          backgroundColor: Color(0xFF29292b),
        ),
        appBarTheme: AppBarTheme(
          elevation: 0.5,
          backgroundColor: const Color.fromARGB(255, 28, 28, 29),
          iconTheme: const IconThemeData(color: secondColor),
          systemOverlayStyle: SystemUiOverlayStyle.light,
          toolbarTextStyle: TextTheme(
            titleLarge: GoogleFonts.raleway(
              color: Colors.white,
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
          ).bodyMedium,
          titleTextStyle: TextTheme(
            titleLarge: GoogleFonts.raleway(
              color: Colors.white,
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
          ).titleLarge,
        ),
        inputDecorationTheme: InputDecorationTheme(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16),
            borderSide: const BorderSide(color: Colors.white),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16),
            borderSide: const BorderSide(color: Colors.white),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16),
            borderSide: const BorderSide(color: Colors.white),
          ),
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16),
            borderSide: const BorderSide(color: Colors.red),
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16),
            borderSide: const BorderSide(color: Colors.red),
          ),
          labelStyle: GoogleFonts.raleway(
            color: Colors.white,
            fontSize: 14,
          ),
          hintStyle: GoogleFonts.raleway(
            color: Colors.white,
            fontSize: 14,
          ),
          errorStyle: GoogleFonts.raleway(
            color: Colors.red,
            fontSize: 14,
          ),
        ),
        textTheme: TextTheme(
          headlineMedium: GoogleFonts.raleway(
            fontWeight: FontWeight.w600,
            color: Colors.white,
            fontSize: 16,
          ),
          bodyMedium: GoogleFonts.raleway(
            color: Colors.white,
            fontSize: 14,
          ),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            elevation: 0.5,
            backgroundColor: primaryColor.withOpacity(0.75),
            padding: const EdgeInsets.fromLTRB(18, 10, 18, 10),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
          ),
        ),
        iconTheme: const IconThemeData(color: Colors.white),
        // colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.green)
        //     .copyWith(background: const Color(0xFF29292b))
        //     .copyWith(secondary: const Color.fromARGB(255, 93, 238, 120)),
      ),
      home: const SplashScreen(),
    );
  }
}
