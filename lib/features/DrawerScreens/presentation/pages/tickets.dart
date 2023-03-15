import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:provider/provider.dart';

import '../../../../core/components/progressDialog.dart';
import '../../../../core/constants/widgetFunctions.dart';
import '../../../../core/services/apiService.dart';
import '../../../../core/utils/appConfig.dart';
import '../../../../main.dart';
import '../../../Generic/features/authentication/presentation/provider/authProvider.dart';

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
    final ticketController = TextEditingController();
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: appBar('Open Tickets - $ticketSize'),
      floatingActionButton: FloatingActionButton(
        tooltip: 'Open Ticket',
        onPressed: () {
          showDialog(
            context: context,
            builder: (context) => Dialog(
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
                height: 200,
                width: 200,
                decoration: const BoxDecoration(),
                padding: const EdgeInsets.all(15),
                child: Column(
                  children: [
                    mainText16('Open Ticket'),
                    addVertical(10),
                    Card(
                      child: buildTextField(
                        'Ticket',
                        '',
                        false,
                        false,
                        ticketController,
                      ),
                    ),
                    addVertical(10),
                    ElevatedButton(
                      onPressed: () async {
                        if (ticketController.text.isEmpty) {
                        } else {
                          openTicket(ticketController.text, context);
                        }
                      },
                      child: mainText16('Open'),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
        child: const Icon(Icons.add),
      ),
      body: screenBody(
        size,
        children: [
          addVertical(10),
          ticketSize == 0
              ? Center(child: mainText14('⛔ No open tickets'))
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

openTicket(String ticketMessage, BuildContext context) async {
  final config = await AppConfig.forEnvironment(envVar);

  try {
    showDialog(
      context: context,
      builder: (context) =>
          const ProgressDialog(displayMessage: 'Opening Ticket...'),
    );
    var jsonBody = jsonEncode({'message': ticketMessage});
    Response? response = await ApiService().postDataWithAuth(
      url: config.ticketingUrl,
      auth: context.read<AuthProvider>().accessToken,
      body: jsonBody,
    );

    print('Response: ${response}');

    if (response!.statusCode == 201) {
      var openTicketResponse = jsonDecode(response.body);
      Navigator.pop(context);
      Navigator.pop(context);
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(openTicketResponse['message']),
          backgroundColor: Colors.teal[200],
        ),
      );
      // Navigator.pop(context);
    } else {
      Navigator.pop(context);
      Navigator.pop(context);

      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('${response.statusCode}: Failed to open ticket'),
          backgroundColor: Colors.red[200],
        ),
      );
    }
  } catch (e) {
    print(e);
    Navigator.pop(context);
  }
}
