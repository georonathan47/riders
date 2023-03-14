import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../core/constants/colors.dart';

class EarningsCard extends StatelessWidget {
  final int index;
  const EarningsCard({Key? key, required this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Card(
      elevation: 1,
      shape: ShapeBorder.lerp(
        const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(25)),
        ),
        const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(25)),
        ),
        0.5,
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 2, vertical: 5),
        child: ListTile(
          leading: Container(
            height: size.height * 0.05,
            width: size.width * 0.1,
            decoration: BoxDecoration(
              color: secondColor,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Center(
              child: Text(
                '$index',
                style: GoogleFonts.raleway(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
          title: Text(
            'Earnings',
            style: GoogleFonts.raleway(),
          ),
          subtitle: Text(
            'Total Earnings',
            style: GoogleFonts.raleway(),
          ),
          trailing: Text(
            '₦ 0.00',
            style: GoogleFonts.raleway(),
          ),
        ),
      ),
    );
  }
}
