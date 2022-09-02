import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:riders/core/constants/colors.dart';
import 'package:riders/features/Index/presentation/pages/Homepage.dart';
import 'package:riders/features/Index/presentation/pages/RecentOrders.dart';

class Index extends StatefulWidget {
  const Index({Key? key}) : super(key: key);

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
      ///* do another if check here to see if the login details have a
      ///* isAdmin property. If isAdmin == true, show everything admin
      return const Homepage();
    } else if (index == 1) {
      return const RecentOrders();
    } else if (index == 2) {
    } else {
      // return const BranchesPage();
    }
    return null;
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
        Icon(Icons.home, size: 20, color: Colors.white),
        Icon(Icons.receipt_long, size: 20, color: Colors.white),
        Icon(Icons.wallet_outlined, size: 20, color: Colors.white),
        FaIcon(FontAwesomeIcons.applePay, color: Colors.white),
      ],
    );
  }
}
