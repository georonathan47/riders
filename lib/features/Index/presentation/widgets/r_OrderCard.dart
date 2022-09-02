import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:riders/core/constants/widgetFunctions.dart';

class RecentCard extends StatelessWidget {
  const RecentCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90,
      decoration: BoxDecoration(
        color: Colors.transparent,
        borderRadius: BorderRadius.circular(25),
      ),
      child: Card(
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
        // margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
        child: Padding(
          padding: const EdgeInsets.all(5),
          child: ListTile(
            leading: const Icon(Icons.info_outlined),
            title: Column(
              children: [
                Row(
                  children: [
                    mainText('ID:'),
                    addHorizontal(10),
                    subText('d2d-0d2d-0d2d-0d2d'),
                  ],
                ),
                addVertical(12),
                Row(
                  children: [
                    mainText('Earnings:'),
                    addHorizontal(10),
                    subText('GH¢ 3'),
                  ],
                ),
              ],
            ),
            trailing: FaIcon(FontAwesomeIcons.chevronDown),
          ),
        ),
      ),
    );
  }
}
