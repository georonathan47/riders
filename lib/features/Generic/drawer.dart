import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:http/http.dart';
import 'package:provider/provider.dart';

import '../../core/components/progressDialog.dart';
import '../../core/constants/colors.dart';
import '../../core/services/apiService.dart';
import '../../core/utils/appConfig.dart';
import '../../main.dart';
import '../DrawerScreens/presentation/pages/Notifications.dart';
import '../DrawerScreens/presentation/pages/faqs.dart';
import '../DrawerScreens/presentation/pages/friend.dart';
import '../DrawerScreens/presentation/pages/settings.dart';
import '../DrawerScreens/presentation/pages/tickets.dart';
import '../DrawerScreens/presentation/pages/wallet.dart';
import 'auth/authProvider.dart';
import 'auth/login.dart';

dynamic version;
Widget Sidebar(BuildContext context, {String? email, String? name}) {
  return Drawer(
    elevation: 1.25,
    child: GestureDetector(
      onTap: () async {
        final config = await AppConfig.forEnvironment(envVar);
        version = config.version;
      },
      child: Stack(
        children: [
          ListView(
            padding: EdgeInsets.zero,
            children: [
              UserAccountsDrawerHeader(
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    colors: [primaryColor, secondColor],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                ),
                currentAccountPicture: CircleAvatar(
                  radius: 65,
                  backgroundColor: Colors.white60,
                  child: Image.asset('assets/images/logo.png'),
                ),
                accountName: Text(
                  'Hello, $name!',
                  style: GoogleFonts.lato(
                    fontSize: 14,
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                    letterSpacing: .25,
                  ),
                ),
                accountEmail: Text(
                  email!,
                  style: GoogleFonts.poppins(
                    fontSize: 14,
                    color: Colors.white,
                    fontWeight: FontWeight.w400,
                    letterSpacing: .25,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Card(
                  // color: WARNING.shade100,
                  shape: ShapeBorder.lerp(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    0.5,
                  ),
                  elevation: .5,
                  child: ListTile(
                    leading: Image.asset('assets/images/bell.png', height: 25),
                    title: Text(
                      'Notifications',
                      style: GoogleFonts.poppins(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        letterSpacing: .65,
                      ),
                    ),
                    onTap: () {
                      Navigator.pop(context);
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => NotificationsPage(),
                        ),
                      );
                      // Navigator.push(context, '/notifications');
                    },
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Card(
                  shape: ShapeBorder.lerp(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    0.5,
                  ),
                  elevation: .5,
                  child: ListTile(
                    leading: Icon(Icons.wallet_outlined,
                        size: 25, color: secondColor),
                    title: Text(
                      'Wallet',
                      style: GoogleFonts.poppins(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        letterSpacing: .65,
                      ),
                    ),
                    onTap: () {
                      Navigator.pop(context);
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => WalletPage(),
                        ),
                      );
                    },
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Card(
                  shape: ShapeBorder.lerp(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    0.5,
                  ),
                  elevation: .5,
                  child: ListTile(
                    leading: Image.asset('assets/images/faq.png', height: 30),
                    title: Text(
                      'FAQs',
                      style: GoogleFonts.poppins(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        letterSpacing: .65,
                      ),
                    ),
                    onTap: () {
                      Navigator.pop(context);
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const FAQs(),
                        ),
                      );
                    },
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Card(
                  shape: ShapeBorder.lerp(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    0.5,
                  ),
                  // color: LABEL_COLOR,
                  elevation: .5,
                  child: ListTile(
                    leading: Icon(
                      Icons.share_outlined,
                      size: 25,
                      color: secondColor,
                    ),
                    title: Text(
                      'Invite a Friend',
                      style: GoogleFonts.poppins(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        letterSpacing: .65,
                      ),
                    ),
                    onTap: () async {
                      Navigator.pop(context);
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const Invites(),
                        ),
                      );
                    },
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Card(
                  shape: ShapeBorder.lerp(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    0.5,
                  ),
                  color: Theme.of(context).cardColor,
                  elevation: .5,
                  child: ListTile(
                    leading: FaIcon(FontAwesomeIcons.ticket),
                    title: Text(
                      'Open Ticket',
                      style: GoogleFonts.poppins(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        letterSpacing: .65,
                      ),
                    ),
                    onTap: () {
                      Navigator.pop(context);
                      fetchTickets(context);
                    },
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Card(
                  shape: ShapeBorder.lerp(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    0.5,
                  ),
                  elevation: .5,
                  child: ListTile(
                    leading: const Icon(
                      Icons.settings_outlined,
                      color: secondColor,
                      size: 25,
                    ),
                    title: Text(
                      'Settings',
                      style: GoogleFonts.poppins(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        letterSpacing: .65,
                      ),
                    ),
                    onTap: () {
                      Navigator.pop(context);
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => SettingsPage(),
                        ),
                      );
                      // Navigator.pushNamed(context, '/settings');
                    },
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Card(
                  shape: ShapeBorder.lerp(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    0.5,
                  ),
                  color: Theme.of(context).cardColor,
                  elevation: .5,
                  child: ListTile(
                    leading:
                        Image.asset('assets/images/logout.png', height: 30),
                    title: Text(
                      'Logout',
                      style: GoogleFonts.poppins(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        letterSpacing: .65,
                      ),
                    ),
                    onTap: () => logout(context),
                  ),
                ),
              ),
            ],
          ),
          Positioned(
            // top: 720,
            bottom: 10,
            left: 0,
            right: 0,
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Text(
                version == null || version == ''
                    ? 'Version: v$version'
                    : 'Version: v1.0.0',
                style: GoogleFonts.raleway(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  letterSpacing: .75,
                ),
              ),
            ),
          ),
        ],
      ),
    ),
  );
}

fetchTickets(BuildContext context) async {
  final config = await AppConfig.forEnvironment(envVar);
  try {
    showDialog(
      context: context,
      builder: (context) => const ProgressDialog(
        displayMessage: 'Fetching tickets...\nPlease wait!',
      ),
    );

    Response? response = await ApiService().getDataWithAuth(
      url: config.ticketingUrl!,
      auth: context.read<AuthProvider>().accessToken,
    );
    print('response: $response');

    if (response!.statusCode == 200) {
      // ? TODO: Fix response return string instead of list
      var fetchTicketsResponse = response.body;
      print('fetchTicketsResponse: $fetchTicketsResponse');

      Navigator.pop(context);
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => Tickets(response: fetchTicketsResponse),
        ),
      );
    } else {
      Navigator.pop(context);
      print(response.body);
    }
  } catch (error, stackTrace) {
    print('Exception occured: $error\nstackTrace: $stackTrace');
    Navigator.pop(context);
  }
}

logout(BuildContext context) async {
  final config = await AppConfig.forEnvironment(envVar);
  try {
    Navigator.pop(context);
    // ? Clear User session and logout
    // await ApiService().logout(refreshToken).then((value) {
    showDialog(
      context: context,
      builder: (context) => const ProgressDialog(
        displayMessage: 'Logging out...',
      ),
    );

    Future.delayed(const Duration(seconds: 2));

    Response? logoutResponse = await ApiService().postData(
      url: config.logoutUrl,
      body: jsonEncode({context.read<AuthProvider>().accessToken}),
    );

    print(logoutResponse!.statusCode);
    if (logoutResponse.statusCode == 201) {
      print('Logout successful');
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => const Login(),
        ),
      );
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(
            'You have successfully logged out!',
            style: GoogleFonts.raleway(
              fontSize: 16,
              color: Colors.black,
            ),
          ),
          backgroundColor: Colors.teal[200],
        ),
      );
    } else {
      print('Logout failed');
      Navigator.pop(context);
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
  } catch (error, stacktrace) {
    print('Exception occured: $error\n stackTrace: $stacktrace');
  }
}
