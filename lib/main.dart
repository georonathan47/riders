import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'Splash.dart';
import 'core/constants/theme.dart';
import 'core/utils/appConfig.dart';

dynamic envVar;

void main({String? env}) async {
  WidgetsFlutterBinding.ensureInitialized();

  env ??= 'dev';
  print('Working from the $env environment');
  final config = await AppConfig.forEnvironment(env);
  envVar = config.env;
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
        ),
      ),
    ],
    child: Riders(config: config),
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
      theme: FlexColorScheme.light(
        colors: lightTheme,
        useMaterial3ErrorColors: true,
      ).toTheme,
      darkTheme: FlexColorScheme.dark(
        colors: lightTheme.toDark(),
        background: Color.fromARGB(255, 0, 0, 0),
        useMaterial3ErrorColors: true,
      ).toTheme,
      home: const SplashScreen(),
    );
  }
}
