import 'package:flutter/material.dart';

import '../../../../core/constants/colors.dart';
import '../../../../core/constants/widgetFunctions.dart';

class RecentCard extends StatefulWidget {
  const RecentCard({Key? key}) : super(key: key);

  @override
  State<RecentCard> createState() => _RecentCardState();
}

class _RecentCardState extends State<RecentCard> {
  @override
  Widget build(BuildContext context) {
    bool isExpanded = true;
    // bool isExpanded2 = true;
    return Container(
      height: 95,
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
          padding: const EdgeInsets.all(5),
          child: ListView(
            physics: BouncingScrollPhysics(
              parent: AlwaysScrollableScrollPhysics(),
            ),
            children: [
              ListTile(
                leading: Padding(
                  padding: const EdgeInsets.all(9),
                  child: const Icon(
                    Icons.info_outlined,
                    color: secondColor,
                    size: 30,
                  ),
                ),
                title: Column(
                  children: [
                    Row(
                      children: [
                        mainText('Order ID:'),
                        addHorizontal(10),
                        subText('d2d-0d2d'),
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
                trailing: IconButton(
                  onPressed: () {
                    setState(() {
                      isExpanded = !isExpanded;
                    });
                  },
                  icon: isExpanded
                      ? Icon(
                          size: 35,
                          color: secondColor,
                          Icons.keyboard_arrow_down,
                        )
                      : Icon(
                          size: 35,
                          color: primaryColor,
                          Icons.keyboard_arrow_up,
                        ),
                ),
              ),
              isExpanded ? SizedBox() : SizedBox(height: 20),
              AnimatedCrossFade(
                firstChild: Text(
                  '',
                  style: TextStyle(
                    fontSize: 0,
                  ),
                ),
                secondChild: Text(
                  'More details',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15.7,
                  ),
                ),
                crossFadeState: isExpanded
                    ? CrossFadeState.showFirst
                    : CrossFadeState.showSecond,
                duration: Duration(milliseconds: 1200),
                reverseDuration: Duration.zero,
                sizeCurve: Curves.fastLinearToSlowEaseIn,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class MyCustomWidget extends StatefulWidget {
  @override
  _MyCustomWidgetState createState() => _MyCustomWidgetState();
}

class _MyCustomWidgetState extends State<MyCustomWidget> {
  String TapToExpandIt = 'Tap to Expand it';
  String Sentence = 'Widgets that have global keys reparent their subtrees when'
      ' they are moved from one location in the tree to another location in the'
      ' tree. In order to reparent its subtree, a widget must arrive at its new'
      ' location in the tree in the same animation frame in which it was removed'
      ' from its old location the tree.'
      ' Widgets that have global keys reparent their subtrees when they are moved'
      ' from one location in the tree to another location in the tree. In order'
      ' to reparent its subtree, a widget must arrive at its new location in the'
      ' tree in the same animation frame in which it was removed from its old'
      ' location the tree.';
  bool isExpanded = true;
  bool isExpanded2 = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        physics: BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
        children: [
          InkWell(
            highlightColor: Colors.transparent,
            splashColor: Colors.transparent,
            onTap: () {
              setState(() {
                isExpanded = !isExpanded;
              });
            },
            child: AnimatedContainer(
              margin: EdgeInsets.symmetric(
                horizontal: isExpanded ? 25 : 0,
                vertical: 20,
              ),
              padding: EdgeInsets.all(20),
              height: isExpanded ? 70 : 330,
              curve: Curves.fastLinearToSlowEaseIn,
              duration: Duration(milliseconds: 1200),
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Color(0xff6F12E8).withOpacity(0.5),
                    blurRadius: 20,
                    offset: Offset(5, 10),
                  ),
                ],
                color: Color(0xff6F12E8),
                borderRadius: BorderRadius.all(
                  Radius.circular(isExpanded ? 20 : 0),
                ),
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // Text(
                      //   TapToExpandIt,
                      //   style: TextStyle(
                      //     color: Colors.white,
                      //     fontSize: 22,
                      //     fontWeight: FontWeight.w400,
                      //   ),
                      // ),
                      Icon(
                        !isExpanded
                            ? Icons.keyboard_arrow_down
                            : Icons.keyboard_arrow_up,
                        color: Colors.white,
                        size: 27,
                      ),
                    ],
                  ),
                  isExpanded ? SizedBox() : SizedBox(height: 20),
                  AnimatedCrossFade(
                    firstChild: Text(
                      '',
                      style: TextStyle(
                        fontSize: 0,
                      ),
                    ),
                    secondChild: Text(
                      Sentence,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15.7,
                      ),
                    ),
                    crossFadeState: isExpanded
                        ? CrossFadeState.showFirst
                        : CrossFadeState.showSecond,
                    duration: Duration(milliseconds: 1200),
                    reverseDuration: Duration.zero,
                    sizeCurve: Curves.fastLinearToSlowEaseIn,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
