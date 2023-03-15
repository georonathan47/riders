import 'package:flutter/material.dart';

class RecentCard extends StatefulWidget {
  const RecentCard({Key? key}) : super(key: key);

  @override
  State<RecentCard> createState() => _RecentCardState();
}

class _RecentCardState extends State<RecentCard> with TickerProviderStateMixin {
  // bool _showAnswer1 = false;
  // bool _showAnswer2 = false;
  // bool _showAnswer3 = false;
  // bool _showAnswer4 = false;
  // bool _showAnswer5 = false;
  // Animation? _arrowAnimation;
  // Animation? _arrowAnimation2;
  // Animation? _arrowAnimation3;
  // Animation? _arrowAnimation4;
  // Animation? _arrowAnimation5;
  // AnimationController? _arrowAnimationController;
  // AnimationController? _arrowAnimationController2;
  // AnimationController? _arrowAnimationController3;
  // AnimationController? _arrowAnimationController4;
  // AnimationController? _arrowAnimationController5;
  void initState() {
    super.initState();
    // _arrowAnimationController = AnimationController(
    //   vsync: this,
    //   duration: const Duration(milliseconds: 300),
    // );
    // _arrowAnimation =
    //     Tween(begin: 0.0, end: pi).animate(_arrowAnimationController!);
    // _arrowAnimationController2 = AnimationController(
    //   vsync: this,
    //   duration: const Duration(milliseconds: 300),
    // );
    // _arrowAnimation2 =
    //     Tween(begin: 0.0, end: pi).animate(_arrowAnimationController2!);
    // _arrowAnimationController3 = AnimationController(
    //   vsync: this,
    //   duration: const Duration(milliseconds: 300),
    // );
    // _arrowAnimation3 =
    //     Tween(begin: 0.0, end: pi).animate(_arrowAnimationController3!);
    // _arrowAnimationController4 = AnimationController(
    //   vsync: this,
    //   duration: const Duration(milliseconds: 300),
    // );
    // _arrowAnimation4 =
    //     Tween(begin: 0.0, end: pi).animate(_arrowAnimationController4!);
    // _arrowAnimationController5 = AnimationController(
    //   vsync: this,
    //   duration: const Duration(milliseconds: 300),
    // );
    // _arrowAnimation5 =
    //     Tween(begin: 0.0, end: pi).animate(_arrowAnimationController5!);
  }

  @override
  void dispose() {
    super.dispose();
    // _arrowAnimationController!.dispose();
    // _arrowAnimationController2!.dispose();
    // _arrowAnimationController3!.dispose();
    // _arrowAnimationController4!.dispose();
    // _arrowAnimationController5!.dispose();
  }

  bool isTapped = true;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              // Card(
              //   shape: ShapeBorder.lerp(
              //     RoundedRectangleBorder(
              //       borderRadius: BorderRadius.circular(15),
              //     ),
              //     RoundedRectangleBorder(
              //       borderRadius: BorderRadius.circular(15),
              //     ),
              //     0.5,
              //   ),
              //   child: Container(
              //     height: 60,
              //     width: MediaQuery.of(context).size.width,
              //     decoration: BoxDecoration(
              //       borderRadius: BorderRadius.circular(15),
              //     ),
              //     child: Padding(
              //       padding: const EdgeInsets.only(right: 14.0),
              //       child: Row(
              //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //         children: [
              //           Center(
              //             child: Align(
              //               alignment: Alignment.centerLeft,
              //               child: Padding(
              //                 padding: const EdgeInsets.all(12.0),
              //                 child: Text(
              //                   'How do I become a rider for Desserts\n to Door?',
              //                   style: GoogleFonts.raleway(
              //                     fontWeight: FontWeight.w600,
              //                   ),
              //                 ),
              //               ),
              //             ),
              //           ),
              //           InkWell(
              //             splashColor: Colors.transparent,
              //             highlightColor: Colors.transparent,
              //             onHighlightChanged: (value) {
              //               setState(() {
              //                 isTapped = value;
              //               });
              //             },
              //             onTap: () {
              //               setState(
              //                 () {
              //                   _arrowAnimationController!.isCompleted
              //                       ? _arrowAnimationController!.reverse()
              //                       : _arrowAnimationController!.forward();
              //                   _showAnswer1 = !_showAnswer1;
              //                 },
              //               );
              //             },
              //             child: AnimatedContainer(
              //               duration: const Duration(milliseconds: 300),
              //               curve: Curves.fastLinearToSlowEaseIn,
              //               height: isTapped ? 45 : 50,
              //               width: isTapped ? 45 : 50,
              //               decoration: BoxDecoration(
              //                 shape: BoxShape.circle,
              //               ),
              //               child: AnimatedBuilder(
              //                 animation: _arrowAnimationController!,
              //                 builder: (context, child) => Transform.rotate(
              //                   angle: _arrowAnimation!.value,
              //                   child: const Icon(
              //                     Icons.expand_more,
              //                     size: 30.0,
              //                   ),
              //                 ),
              //               ),
              //             ),
              //           ),
              //         ],
              //       ),
              //     ),
              //   ),
              // ),
              // _showAnswer1
              //     ? Padding(
              //         padding: const EdgeInsets.all(0.0),
              //         child: Card(
              //           shape: ShapeBorder.lerp(
              //             RoundedRectangleBorder(
              //               borderRadius: BorderRadius.circular(15),
              //             ),
              //             RoundedRectangleBorder(
              //               borderRadius: BorderRadius.circular(15),
              //             ),
              //             0.5,
              //           ),
              //           child: Container(
              //             // height: 292,
              //             decoration: BoxDecoration(
              //               borderRadius: BorderRadius.circular(13),
              //             ),
              //             child: Padding(
              //               padding: const EdgeInsets.all(15.0),
              //               child: Text(
              //                 'To become a rider for Desserts to Door, download the app and sign up as a rider. You will need to provide some basic information, including your name, contact details, and vehicle information.',
              //                 style: GoogleFonts.raleway(
              //                   fontWeight: FontWeight.w500,
              //                   letterSpacing: .15,
              //                 ),
              //                 // textAlign: TextAlign.justify,
              //               ),
              //             ),
              //           ),
              //         ),
              //       )
              //     : const SizedBox(),
              // addVertical(7),
              // Card(
              //   shape: ShapeBorder.lerp(
              //     RoundedRectangleBorder(
              //       borderRadius: BorderRadius.circular(15),
              //     ),
              //     RoundedRectangleBorder(
              //       borderRadius: BorderRadius.circular(15),
              //     ),
              //     0.5,
              //   ),
              //   child: Container(
              //     height: 60,
              //     width: MediaQuery.of(context).size.width,
              //     decoration: BoxDecoration(
              //       borderRadius: BorderRadius.circular(15),
              //     ),
              //     child: Padding(
              //       padding: const EdgeInsets.only(right: 15.0),
              //       child: Row(
              //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //         children: [
              //           Center(
              //             child: Align(
              //               alignment: Alignment.centerLeft,
              //               child: Padding(
              //                 padding: const EdgeInsets.all(12.0),
              //                 child: Text(
              //                   'Are there any delivery fees?',
              //                   style: GoogleFonts.raleway(
              //                     fontWeight: FontWeight.w600,
              //                   ),
              //                 ),
              //               ),
              //             ),
              //           ),
              //           InkWell(
              //             splashColor: Colors.transparent,
              //             highlightColor: Colors.transparent,
              //             onHighlightChanged: (value) {
              //               setState(() {
              //                 isTapped = value;
              //               });
              //             },
              //             onTap: () {
              //               setState(
              //                 () {
              //                   _arrowAnimationController2!.isCompleted
              //                       ? _arrowAnimationController2!.reverse()
              //                       : _arrowAnimationController2!.forward();
              //                   _showAnswer2 = !_showAnswer2;
              //                 },
              //               );
              //             },
              //             child: AnimatedContainer(
              //               duration: const Duration(milliseconds: 300),
              //               curve: Curves.fastLinearToSlowEaseIn,
              //               height: isTapped ? 45 : 50,
              //               width: isTapped ? 45 : 50,
              //               decoration: BoxDecoration(
              //                 shape: BoxShape.circle,
              //               ),
              //               child: AnimatedBuilder(
              //                 animation: _arrowAnimationController2!,
              //                 builder: (context, child) => Transform.rotate(
              //                   angle: _arrowAnimation2!.value,
              //                   child: const Icon(
              //                     Icons.expand_more,
              //                     size: 30.0,
              //                   ),
              //                 ),
              //               ),
              //             ),
              //           ),
              //         ],
              //       ),
              //     ),
              //   ),
              // ),
              // _showAnswer2
              //     ? Padding(
              //         padding: const EdgeInsets.all(0.0),
              //         child: Card(
              //           shape: ShapeBorder.lerp(
              //             RoundedRectangleBorder(
              //               borderRadius: BorderRadius.circular(15),
              //             ),
              //             RoundedRectangleBorder(
              //               borderRadius: BorderRadius.circular(15),
              //             ),
              //             0.5,
              //           ),
              //           child: Container(
              //             // height: 162,
              //             decoration: BoxDecoration(
              //               borderRadius: BorderRadius.circular(13),
              //             ),
              //             child: Padding(
              //               padding: const EdgeInsets.all(15.0),
              //               child: Text(
              //                 'Yes, there is a small delivery fee for each order. The exact amount depends on your location and the size of your order.',
              //                 style: GoogleFonts.raleway(
              //                   fontWeight: FontWeight.w500,
              //                   letterSpacing: .15,
              //                 ),
              //                 // textAlign: TextAlign.justify,
              //               ),
              //             ),
              //           ),
              //         ),
              //       )
              //     : const SizedBox(),
              // addVertical(7),
              // Card(
              //   shape: ShapeBorder.lerp(
              //     RoundedRectangleBorder(
              //       borderRadius: BorderRadius.circular(15),
              //     ),
              //     RoundedRectangleBorder(
              //       borderRadius: BorderRadius.circular(15),
              //     ),
              //     0.5,
              //   ),
              //   child: Container(
              //     // height: 70,
              //     width: MediaQuery.of(context).size.width,
              //     decoration: BoxDecoration(
              //       borderRadius: BorderRadius.circular(15),
              //     ),
              //     child: Padding(
              //       padding: const EdgeInsets.only(right: 15.0),
              //       child: Row(
              //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //         children: [
              //           Expanded(
              //             child: Center(
              //               child: Align(
              //                 alignment: Alignment.centerLeft,
              //                 child: Padding(
              //                   padding: const EdgeInsets.all(12.0),
              //                   child: Text(
              //                     'How much can I earn as a Desserts to Door rider?',
              //                     style: GoogleFonts.raleway(
              //                       fontWeight: FontWeight.w600,
              //                     ),
              //                   ),
              //                 ),
              //               ),
              //             ),
              //           ),
              //           InkWell(
              //             splashColor: Colors.transparent,
              //             highlightColor: Colors.transparent,
              //             onHighlightChanged: (value) {
              //               setState(() {
              //                 isTapped = value;
              //               });
              //             },
              //             onTap: () {
              //               setState(
              //                 () {
              //                   _arrowAnimationController3!.isCompleted
              //                       ? _arrowAnimationController3!.reverse()
              //                       : _arrowAnimationController3!.forward();
              //                   _showAnswer3 = !_showAnswer3;
              //                 },
              //               );
              //             },
              //             child: AnimatedContainer(
              //               duration: const Duration(milliseconds: 300),
              //               curve: Curves.fastLinearToSlowEaseIn,
              //               height: isTapped ? 45 : 50,
              //               width: isTapped ? 45 : 50,
              //               decoration: BoxDecoration(
              //                 shape: BoxShape.circle,
              //               ),
              //               child: AnimatedBuilder(
              //                 animation: _arrowAnimationController3!,
              //                 builder: (context, child) => Transform.rotate(
              //                   angle: _arrowAnimation3!.value,
              //                   child: const Icon(
              //                     Icons.expand_more,
              //                     size: 30.0,
              //                   ),
              //                 ),
              //               ),
              //             ),
              //           ),
              //         ],
              //       ),
              //     ),
              //   ),
              // ),
              // _showAnswer3
              //     ? Padding(
              //         padding: const EdgeInsets.all(0.0),
              //         child: Card(
              //           shape: ShapeBorder.lerp(
              //             RoundedRectangleBorder(
              //               borderRadius: BorderRadius.circular(15),
              //             ),
              //             RoundedRectangleBorder(
              //               borderRadius: BorderRadius.circular(15),
              //             ),
              //             0.5,
              //           ),
              //           child: Container(
              //             decoration: BoxDecoration(
              //               borderRadius: BorderRadius.circular(13),
              //             ),
              //             child: Padding(
              //               padding: const EdgeInsets.all(12.0),
              //               child: Text(
              //                 'The amount you earn as a rider depends on the number of deliveries you make and the distance you travel. You will receive a percentage of the delivery fee for each order you complete.',
              //                 style: GoogleFonts.raleway(
              //                   fontWeight: FontWeight.w500,
              //                   letterSpacing: .15,
              //                 ),
              //                 // textAlign: TextAlign.justify,
              //               ),
              //             ),
              //           ),
              //         ),
              //       )
              //     : const SizedBox(),
              // addVertical(7),
              // Card(
              //   shape: ShapeBorder.lerp(
              //     RoundedRectangleBorder(
              //       borderRadius: BorderRadius.circular(15),
              //     ),
              //     RoundedRectangleBorder(
              //       borderRadius: BorderRadius.circular(15),
              //     ),
              //     0.5,
              //   ),
              //   child: Container(
              //     height: 60,
              //     width: MediaQuery.of(context).size.width,
              //     decoration: BoxDecoration(
              //       borderRadius: BorderRadius.circular(15),
              //     ),
              //     child: Padding(
              //       padding: const EdgeInsets.only(right: 15.0),
              //       child: Row(
              //         children: [
              //           Expanded(
              //             child: Center(
              //               child: Align(
              //                 alignment: Alignment.centerLeft,
              //                 child: Padding(
              //                   padding: const EdgeInsets.all(12.0),
              //                   child: Text(
              //                     'How do I navigate to the customer\'s location?',
              //                     style: GoogleFonts.raleway(
              //                       fontWeight: FontWeight.w600,
              //                     ),
              //                   ),
              //                 ),
              //               ),
              //             ),
              //           ),
              //           InkWell(
              //             splashColor: Colors.transparent,
              //             highlightColor: Colors.transparent,
              //             onHighlightChanged: (value) {
              //               setState(() {
              //                 isTapped = value;
              //               });
              //             },
              //             onTap: () {
              //               setState(
              //                 () {
              //                   _arrowAnimationController4!.isCompleted
              //                       ? _arrowAnimationController4!.reverse()
              //                       : _arrowAnimationController4!.forward();
              //                   _showAnswer4 = !_showAnswer4;
              //                 },
              //               );
              //             },
              //             child: AnimatedContainer(
              //               duration: const Duration(milliseconds: 300),
              //               curve: Curves.fastLinearToSlowEaseIn,
              //               height: isTapped ? 45 : 50,
              //               width: isTapped ? 45 : 50,
              //               decoration: BoxDecoration(
              //                 shape: BoxShape.circle,
              //               ),
              //               child: AnimatedBuilder(
              //                 animation: _arrowAnimationController4!,
              //                 builder: (context, child) => Transform.rotate(
              //                   angle: _arrowAnimation4!.value,
              //                   child: const Icon(
              //                     Icons.expand_more,
              //                     size: 30.0,
              //                   ),
              //                 ),
              //               ),
              //             ),
              //           ),
              //         ],
              //       ),
              //     ),
              //   ),
              // ),
              // _showAnswer4
              //     ? Padding(
              //         padding: const EdgeInsets.all(0.0),
              //         child: Card(
              //           shape: ShapeBorder.lerp(
              //             RoundedRectangleBorder(
              //               borderRadius: BorderRadius.circular(15),
              //             ),
              //             RoundedRectangleBorder(
              //               borderRadius: BorderRadius.circular(15),
              //             ),
              //             0.5,
              //           ),
              //           child: Container(
              //             decoration: BoxDecoration(
              //               borderRadius: BorderRadius.circular(13),
              //             ),
              //             child: Padding(
              //               padding: const EdgeInsets.all(12.0),
              //               child: Text(
              //                 'The app provides turn-by-turn directions to the customer\'s location. You can also use your preferred navigation app to get directions.',
              //                 style: GoogleFonts.raleway(
              //                   fontWeight: FontWeight.w500,
              //                   letterSpacing: .15,
              //                 ),
              //                 // textAlign: TextAlign.justify,
              //               ),
              //             ),
              //           ),
              //         ),
              //       )
              //     : const SizedBox(),
              // addVertical(7),
              // Card(
              //   shape: ShapeBorder.lerp(
              //     RoundedRectangleBorder(
              //       borderRadius: BorderRadius.circular(15),
              //     ),
              //     RoundedRectangleBorder(
              //       borderRadius: BorderRadius.circular(15),
              //     ),
              //     0.5,
              //   ),
              //   child: Container(
              //     height: 70,
              //     width: MediaQuery.of(context).size.width,
              //     decoration: BoxDecoration(
              //       borderRadius: BorderRadius.circular(15),
              //     ),
              //     child: Padding(
              //       padding: const EdgeInsets.only(right: 15.0),
              //       child: Row(
              //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //         children: [
              //           Expanded(
              //             child: Center(
              //               child: Align(
              //                 alignment: Alignment.centerLeft,
              //                 child: Padding(
              //                   padding: const EdgeInsets.all(12.0),
              //                   child: Text(
              //                     'What should I do if there is an issue with the order?',
              //                     style: GoogleFonts.raleway(
              //                       fontWeight: FontWeight.w600,
              //                     ),
              //                   ),
              //                 ),
              //               ),
              //             ),
              //           ),
              //           InkWell(
              //             splashColor: Colors.transparent,
              //             highlightColor: Colors.transparent,
              //             onHighlightChanged: (value) {
              //               setState(() {
              //                 isTapped = value;
              //               });
              //             },
              //             onTap: () {
              //               setState(
              //                 () {
              //                   _arrowAnimationController5!.isCompleted
              //                       ? _arrowAnimationController5!.reverse()
              //                       : _arrowAnimationController5!.forward();
              //                   _showAnswer5 = !_showAnswer5;
              //                 },
              //               );
              //             },
              //             child: AnimatedContainer(
              //               duration: const Duration(milliseconds: 300),
              //               curve: Curves.fastLinearToSlowEaseIn,
              //               height: isTapped ? 45 : 50,
              //               width: isTapped ? 45 : 50,
              //               decoration: BoxDecoration(
              //                 shape: BoxShape.circle,
              //               ),
              //               child: AnimatedBuilder(
              //                 animation: _arrowAnimationController5!,
              //                 builder: (context, child) => Transform.rotate(
              //                   angle: _arrowAnimation5!.value,
              //                   child: const Icon(
              //                     Icons.expand_more,
              //                     size: 30.0,
              //                   ),
              //                 ),
              //               ),
              //             ),
              //           ),
              //         ],
              //       ),
              //     ),
              //   ),
              // ),
              // _showAnswer5
              //     ? Padding(
              //         padding: const EdgeInsets.all(0.0),
              //         child: Card(
              //           shape: ShapeBorder.lerp(
              //             RoundedRectangleBorder(
              //               borderRadius: BorderRadius.circular(15),
              //             ),
              //             RoundedRectangleBorder(
              //               borderRadius: BorderRadius.circular(15),
              //             ),
              //             0.5,
              //           ),
              //           child: Container(
              //             decoration: BoxDecoration(
              //               borderRadius: BorderRadius.circular(13),
              //             ),
              //             child: Padding(
              //               padding: const EdgeInsets.all(12.0),
              //               child: Text(
              //                 'If there is an issue with the order, such as a missing item or incorrect address, you can contact the customer through the app or contact customer support for assistance.',
              //                 style: GoogleFonts.raleway(
              //                   fontWeight: FontWeight.w500,
              //                   letterSpacing: .15,
              //                 ),
              //                 // textAlign: TextAlign.justify,
              //               ),
              //             ),
              //           ),
              //         ),
              //       )
              //     : const SizedBox(),
              // addVertical(7),
            ],
          ),
        ),
      ],
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
