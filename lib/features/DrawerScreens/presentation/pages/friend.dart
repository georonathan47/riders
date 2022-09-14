import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:riders/core/constants/widgetFunctions.dart';
import 'package:riders/core/utils/UtilService.dart';

class Invites extends StatefulWidget {
  const Invites({Key? key}) : super(key: key);

  @override
  State<Invites> createState() => _InvitesState();
}

class _InvitesState extends State<Invites> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: appBar('Invite Your Friends'),
      body: screenBody(
        size,
        children: [
          mainText14('Refer A Friend'),
          const Divider(),
          Container(
            height: size.height * .25,
            width: size.width,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              // color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.white12,
                  blurRadius: 5.0,
                ),
              ],
            ),
            margin: const EdgeInsets.symmetric(horizontal: 50, vertical: 170),
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
            child: Center(
              child: Column(
                children: [
                  addVertical(30),
                  subText(
                    'Send link to a friend '
                    'now to join the '
                    'Desserts to Door family!',
                  ),
                  addVertical(30),
                  SizedBox(
                    width: size.width * 0.45,
                    height: size.height * 0.055,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.teal[500],
                        shape: const StadiumBorder(),
                      ),
                      onPressed: () {
                        UtilService().showSuccessToast(
                          context,
                          desc: 'Copied to clipboard!',
                        );
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [subText('Copy Link'), FaIcon(FontAwesomeIcons.share, size: 25)],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
