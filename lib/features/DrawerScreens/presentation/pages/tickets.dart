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
      ticketSize = widget.response.length;
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
          ticketSize == 0
              ? mainText14('⛔ No open tickets')
              : availableTickets(),
        ],
      ),
    );
  }
}

Widget availableTickets() {
  return ListView.builder(
    itemCount: ticketSize,
    shrinkWrap: true,
    physics: BouncingScrollPhysics(),
    itemBuilder: (context, index) => Card(
      shape: ShapeBorder.lerp(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        0.75,
      ),
      child: Container(
        height: 100,
        width: double.infinity,
        decoration: BoxDecoration(
          // color: Colors.red[100],
          borderRadius: BorderRadius.circular(7.5),
        ),
        margin: const EdgeInsets.all(5),
      ),
    ),
  );
}
