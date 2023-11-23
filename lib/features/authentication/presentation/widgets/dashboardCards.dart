import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../core/constants/WidgetFunctions.dart';

class DashboardCardComponent extends StatelessWidget {
  final Icon? icon;
  final String? label;
  final String? value;

  const DashboardCardComponent({Key? key, this.icon, this.label, this.value})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: ShapeBorder.lerp(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        0.5,
      ),
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          // boxShadow: const [
          //   BoxShadow(
          //     offset: Offset(0.2, 0.2),
          //     blurRadius: 0.2,
          //     spreadRadius: 0.1,
          //   ),
          // ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            icon!,
            addVertical(20),
            Text(
              label!,
              style: GoogleFonts.raleway(
                fontSize: 15.5,
                fontWeight: FontWeight.w700,
              ),
            ),
            addVertical(20),
            Text(
              value!,
              style: GoogleFonts.raleway(
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            )
          ],
        ),
      ),
    );
  }
}
