import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

import 'core/constants/colors.dart';
import 'features/Index/presentation/pages/AccountScreen.dart';
import 'features/Index/presentation/pages/Dashboard.dart';
import 'features/Index/presentation/pages/Earnings.dart';
import 'features/Index/presentation/pages/Homepage.dart';
import 'features/Index/presentation/pages/RecentOrders.dart';

class Index extends StatefulWidget {
  String? username;
  Index({Key? key, this.username}) : super(key: key);

  @override
  State<Index> createState() => _IndexState();
}

class _IndexState extends State<Index> {
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: buildCurvedNavigationBar(),
      // backgroundColor: backgroundColor,
      body: navigator(_selectedIndex),
    );
  }

  Widget? navigator(int index) {
    // Provider.of<AppData>(context, listen: false).updateUserData(customer);
    if (index == 0) {
      return const Dashboard();
    } else if (index == 1) {
      return Homepage(username: widget.username);
    } else if (index == 2) {
      return const RecentOrders();
    } else if (index == 3) {
      return const Earnings();
    } else {
      return const AccountScreen();
    }
  }

  CurvedNavigationBar buildCurvedNavigationBar() {
    return CurvedNavigationBar(
      height: 55,
      color: primaryColor,
      animationCurve: Curves.easeInOut,
      backgroundColor: Colors.transparent,
      animationDuration: const Duration(milliseconds: 750),
      onTap: (index) {
        setState(() {
          _selectedIndex = index;
        });
      },
      items: const [
        Icon(Icons.dashboard, size: 20, color: Colors.white),
        Icon(Icons.home, size: 20, color: Colors.white),
        Icon(Icons.receipt_long, size: 20, color: Colors.white),
        Icon(Icons.wallet_outlined, size: 20, color: Colors.white),
        Icon(Icons.person_outline_outlined, size: 20, color: Colors.white),
      ],
    );
  }
}
