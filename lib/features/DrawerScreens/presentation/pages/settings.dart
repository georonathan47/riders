import 'package:flutter/material.dart';

import '../../../../core/constants/WidgetFunctions.dart';

class SettingsPage extends StatefulWidget {
  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar('Settings'),
    );
  }
}
