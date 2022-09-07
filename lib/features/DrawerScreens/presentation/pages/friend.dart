import 'package:flutter/material.dart';
import 'package:riders/core/constants/widgetFunctions.dart';

class Invites extends StatefulWidget {
  const Invites({Key? key}) : super(key: key);

  @override
  State<Invites> createState() => _InvitesState();
}

class _InvitesState extends State<Invites> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar('Invite Your Friends'),
    );
  }
}
