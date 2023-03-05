import 'package:flutter/material.dart';

import '../../../../core/constants/widgetFunctions.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar('Dashboard'),
      body: screenBody(
        MediaQuery.of(context).size,
        children: [
          Text('Dashboard'),
        ],
      ),
    );
  }
}
