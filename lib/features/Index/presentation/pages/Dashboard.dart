import 'package:avatar_glow/avatar_glow.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../core/constants/widgetFunctions.dart';
import '../../../Generic/auth/login.dart';
import '../../../Generic/drawer.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: .75,
        actions: [
          AvatarGlow(
            child: CircleAvatar(
              child: Image.asset('assets/images/logo.png', height: 65),
              backgroundColor: Colors.white70,
            ),
            endRadius: 65,
            duration: const Duration(milliseconds: 1500),
            glowColor: Colors.white,
          ),
        ],
        title: Text(
          'Homepage',
          style: GoogleFonts.poppins(),
        ),
        centerTitle: true,
        leading: Builder(
          builder: (context) {
            return IconButton(
              icon: const Icon(
                Icons.menu,
                size: 25,
                // color: Colors.black,
              ),
              onPressed: () => Scaffold.of(context).openDrawer(),
            );
          },
        ),
      ),
      drawer: Sidebar(context, email: 'rider@gmail.com', name: username),
      body: screenBody(
        MediaQuery.of(context).size,
        children: [
          Text('Dashboard'),
        ],
      ),
    );
  }
}
