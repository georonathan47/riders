import 'package:flutter/material.dart';
import 'package:riders/core/constants/widgetFunctions.dart';

class Tickets extends StatefulWidget {
  const Tickets({super.key});

  @override
  State<Tickets> createState() => _TicketsState();
}

class _TicketsState extends State<Tickets> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: appBar('Open Tickets - 0'),
      body: screenBody(
        size,
        children: [],
      ),
    );
  }
}
