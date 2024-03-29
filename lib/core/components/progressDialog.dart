import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constants/WidgetFunctions.dart';
import '../constants/colors.dart';

class ProgressDialog extends StatelessWidget {
  final String? displayMessage;

  const ProgressDialog({
    Key? key,
    @required this.displayMessage,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: ShapeBorder.lerp(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        0.5,
      ),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Row(
          children: [
            const CircularProgressIndicator(
              valueColor: AlwaysStoppedAnimation<Color>(primaryColor),
            ),
            addHorizontal(10),
            Text(
              displayMessage!,
              style: GoogleFonts.raleway(
                fontSize: 15,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
