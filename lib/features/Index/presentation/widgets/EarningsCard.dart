import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:riders/core/constants/colors.dart';
import 'package:riders/core/constants/widgetFunctions.dart';

class EarningsCard extends StatelessWidget {
  const EarningsCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      height: 150,
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
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 2, vertical: 5),
          child: ListTile(
            // leading: const Icon(Icons.info_outlined),
            title: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        mainText16('Amount: GH¢ 3'),
                        addVertical(15),
                        SizedBox(
                          width: size.width * 0.5,
                          child: Row(
                            children: [
                              Column(
                                children: [
                                  subText('From'),
                                  addVertical(5),
                                  FaIcon(
                                    FontAwesomeIcons.locationPin,
                                    color: Colors.red[400],
                                  ),
                                  mainText14('Two Streams'),
                                ],
                              ),
                              addHorizontal(2),
                              SizedBox(
                                width: size.width * 0.15,
                                child: const Divider(
                                  thickness: 0.75,
                                  color: primaryColor,
                                ),
                              ),
                              addHorizontal(2),
                              Column(
                                children: [
                                  subText('To'),
                                  addVertical(5),
                                  FaIcon(
                                    FontAwesomeIcons.locationPin,
                                    color: Colors.teal[400],
                                  ),
                                  mainText14('Korle'),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    addHorizontal(5),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        subText('Date:'),
                        addHorizontal(10),
                        mainText16('08/09/2022'),
                        addVertical(10),
                        subText('Time:'),
                        addHorizontal(10),
                        mainText16('3:47PM'),
                      ],
                    ),
                  ],
                ),
                addVertical(10),
                // Row(
                //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //   children: [
                //     Column(
                //       crossAxisAlignment: CrossAxisAlignment.start,
                //       children: [
                //         mainText('Amount:'),
                //         addHorizontal(10),
                //         subText('GH¢ 3'),
                //       ],
                //     ),
                //     Column(
                //       crossAxisAlignment: CrossAxisAlignment.start,
                //       children: [
                //         mainText('Amount:'),
                //         addHorizontal(10),
                //         subText('GH¢ 3'),
                //       ],
                //     ),
                //   ],
                // ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
