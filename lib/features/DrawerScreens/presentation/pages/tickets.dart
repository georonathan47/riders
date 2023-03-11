import 'package:flutter/material.dart';

import '../../../../core/constants/widgetFunctions.dart';

class Tickets extends StatefulWidget {
  final dynamic response;
  const Tickets({super.key, required this.response});

  @override
  State<Tickets> createState() => _TicketsState();
}

int? ticketSize;

class _TicketsState extends State<Tickets> {
  @override
  void initState() {
    super.initState();
    setState(() {
      ticketSize = widget.response.toList().length;
    });
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: appBar('Open Tickets - $ticketSize'),
      body: screenBody(
        size,
        children: [
          addVertical(10),
          Center(
            child: ticketSize == 0
                ? mainText14('⛔ No open tickets')
                : mainText14('🎫 Open Tickets'),
          ),
        ],
      ),
    );
  }
}
