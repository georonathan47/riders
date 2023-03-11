import 'dart:math';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../core/constants/widgetFunctions.dart';

class FAQs extends StatefulWidget {
  const FAQs({super.key});

  @override
  State<FAQs> createState() => _FAQsState();
}

class _FAQsState extends State<FAQs> with TickerProviderStateMixin {
  bool isTapped = false;
  Animation? _arrowAnimation;
  Animation? _arrowAnimation2;
  Animation? _arrowAnimation3;
  Animation? _arrowAnimation4;
  Animation? _arrowAnimation5;
  Animation? _arrowAnimation6;
  Animation? _arrowAnimation7;
  Animation? _arrowAnimation8;
  Animation? _arrowAnimation9;
  Animation? _arrowAnimation10;
  Animation? _arrowAnimation11;
  Animation? _arrowAnimation12;
  AnimationController? _arrowAnimationController;
  AnimationController? _arrowAnimationController2;
  AnimationController? _arrowAnimationController3;
  AnimationController? _arrowAnimationController4;
  AnimationController? _arrowAnimationController5;
  AnimationController? _arrowAnimationController6;
  AnimationController? _arrowAnimationController7;
  AnimationController? _arrowAnimationController8;
  AnimationController? _arrowAnimationController9;
  AnimationController? _arrowAnimationController10;
  AnimationController? _arrowAnimationController11;
  AnimationController? _arrowAnimationController12;

  @override
  void initState() {
    super.initState();
    _arrowAnimationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 300),
    );
    _arrowAnimation =
        Tween(begin: 0.0, end: pi).animate(_arrowAnimationController!);
    _arrowAnimationController2 = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 300),
    );
    _arrowAnimation2 =
        Tween(begin: 0.0, end: pi).animate(_arrowAnimationController2!);
    _arrowAnimationController3 = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 300),
    );
    _arrowAnimation3 =
        Tween(begin: 0.0, end: pi).animate(_arrowAnimationController3!);
    _arrowAnimationController4 = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 300),
    );
    _arrowAnimation4 =
        Tween(begin: 0.0, end: pi).animate(_arrowAnimationController4!);
    _arrowAnimationController5 = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 300),
    );
    _arrowAnimation5 =
        Tween(begin: 0.0, end: pi).animate(_arrowAnimationController5!);
    _arrowAnimationController6 = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 300),
    );
    _arrowAnimation6 =
        Tween(begin: 0.0, end: pi).animate(_arrowAnimationController6!);

    _arrowAnimationController7 = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 300),
    );
    _arrowAnimation7 =
        Tween(begin: 0.0, end: pi).animate(_arrowAnimationController7!);

    _arrowAnimationController8 = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 300),
    );
    _arrowAnimation8 =
        Tween(begin: 0.0, end: pi).animate(_arrowAnimationController8!);

    _arrowAnimationController9 = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 300),
    );
    _arrowAnimation9 =
        Tween(begin: 0.0, end: pi).animate(_arrowAnimationController9!);

    _arrowAnimationController10 = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 300),
    );
    _arrowAnimation10 =
        Tween(begin: 0.0, end: pi).animate(_arrowAnimationController10!);

    _arrowAnimationController11 = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 300),
    );
    _arrowAnimation11 =
        Tween(begin: 0.0, end: pi).animate(_arrowAnimationController11!);
    _arrowAnimationController12 = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 300),
    );
    _arrowAnimation12 =
        Tween(begin: 0.0, end: pi).animate(_arrowAnimationController12!);
  }

  @override
  void dispose() {
    super.dispose();
    _arrowAnimationController!.dispose();
    _arrowAnimationController2!.dispose();
    _arrowAnimationController3!.dispose();
    _arrowAnimationController4!.dispose();
    _arrowAnimationController5!.dispose();
    _arrowAnimationController6!.dispose();
    _arrowAnimationController7!.dispose();
    _arrowAnimationController8!.dispose();
    _arrowAnimationController9!.dispose();
    _arrowAnimationController10!.dispose();
    _arrowAnimationController11!.dispose();
    _arrowAnimationController12!.dispose();
  }

  bool _showAnswer1 = false;
  bool _showAnswer2 = false;
  bool _showAnswer3 = false;
  bool _showAnswer4 = false;
  bool _showAnswer5 = false;
  bool _showAnswer6 = false;
  bool _showAnswer7 = false;
  bool _showAnswer8 = false;
  bool _showAnswer9 = false;
  bool _showAnswer10 = false;
  bool _showAnswer11 = false;
  bool _showAnswer12 = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: const Icon(
            Icons.navigate_before,
            size: 35,
          ),
        ),
        title: Text(
          'Frequently Asked Questions',
          style: GoogleFonts.raleway(
            fontSize: 18,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
      body: Scrollbar(
        thickness: 5.4,
        radius: const Radius.circular(30),
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Card(
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
                        height: 60,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(right: 14.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Center(
                                child: Align(
                                  alignment: Alignment.centerLeft,
                                  child: Padding(
                                    padding: const EdgeInsets.all(12.0),
                                    child: Text(
                                      'How do I become a rider for Desserts to\nDoor?',
                                      style: GoogleFonts.raleway(
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              InkWell(
                                splashColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                onHighlightChanged: (value) {
                                  setState(() {
                                    isTapped = value;
                                  });
                                },
                                onTap: () {
                                  setState(
                                    () {
                                      _arrowAnimationController!.isCompleted
                                          ? _arrowAnimationController!.reverse()
                                          : _arrowAnimationController!
                                              .forward();
                                      _showAnswer1 = !_showAnswer1;
                                    },
                                  );
                                },
                                child: AnimatedContainer(
                                  duration: const Duration(milliseconds: 300),
                                  curve: Curves.fastLinearToSlowEaseIn,
                                  height: isTapped ? 45 : 50,
                                  width: isTapped ? 45 : 50,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                  ),
                                  child: AnimatedBuilder(
                                    animation: _arrowAnimationController!,
                                    builder: (context, child) =>
                                        Transform.rotate(
                                      angle: _arrowAnimation!.value,
                                      child: const Icon(
                                        Icons.expand_more,
                                        size: 30.0,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    _showAnswer1
                        ? Padding(
                            padding: const EdgeInsets.all(0.0),
                            child: Card(
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
                                // height: 292,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(13),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(15.0),
                                  child: Text(
                                    'To become a rider for Desserts to Door, download the app and sign up as a rider. You will need to provide some basic information, including your name, contact details, and vehicle information.',
                                    style: GoogleFonts.raleway(
                                      fontWeight: FontWeight.w500,
                                      letterSpacing: .15,
                                    ),
                                    // textAlign: TextAlign.justify,
                                  ),
                                ),
                              ),
                            ),
                          )
                        : const SizedBox(),
                    addVertical(7),
                    Card(
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
                        height: 60,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(right: 15.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Center(
                                child: Align(
                                  alignment: Alignment.centerLeft,
                                  child: Padding(
                                    padding: const EdgeInsets.all(12.0),
                                    child: Text(
                                      'Are there any delivery fees?',
                                      style: GoogleFonts.raleway(
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              InkWell(
                                splashColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                onHighlightChanged: (value) {
                                  setState(() {
                                    isTapped = value;
                                  });
                                },
                                onTap: () {
                                  setState(
                                    () {
                                      _arrowAnimationController2!.isCompleted
                                          ? _arrowAnimationController2!
                                              .reverse()
                                          : _arrowAnimationController2!
                                              .forward();
                                      _showAnswer2 = !_showAnswer2;
                                    },
                                  );
                                },
                                child: AnimatedContainer(
                                  duration: const Duration(milliseconds: 300),
                                  curve: Curves.fastLinearToSlowEaseIn,
                                  height: isTapped ? 45 : 50,
                                  width: isTapped ? 45 : 50,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                  ),
                                  child: AnimatedBuilder(
                                    animation: _arrowAnimationController2!,
                                    builder: (context, child) =>
                                        Transform.rotate(
                                      angle: _arrowAnimation2!.value,
                                      child: const Icon(
                                        Icons.expand_more,
                                        size: 30.0,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    _showAnswer2
                        ? Padding(
                            padding: const EdgeInsets.all(0.0),
                            child: Card(
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
                                // height: 162,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(13),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(15.0),
                                  child: Text(
                                    'Yes, there is a small delivery fee for each order. The exact amount depends on your location and the size of your order.',
                                    style: GoogleFonts.raleway(
                                      fontWeight: FontWeight.w500,
                                      letterSpacing: .15,
                                    ),
                                    // textAlign: TextAlign.justify,
                                  ),
                                ),
                              ),
                            ),
                          )
                        : const SizedBox(),
                    addVertical(7),
                    Card(
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
                        // height: 70,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(right: 15.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Expanded(
                                child: Center(
                                  child: Align(
                                    alignment: Alignment.centerLeft,
                                    child: Padding(
                                      padding: const EdgeInsets.all(12.0),
                                      child: Text(
                                        'How much can I earn as a Desserts to Door rider?',
                                        style: GoogleFonts.raleway(
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              InkWell(
                                splashColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                onHighlightChanged: (value) {
                                  setState(() {
                                    isTapped = value;
                                  });
                                },
                                onTap: () {
                                  setState(
                                    () {
                                      _arrowAnimationController3!.isCompleted
                                          ? _arrowAnimationController3!
                                              .reverse()
                                          : _arrowAnimationController3!
                                              .forward();
                                      _showAnswer3 = !_showAnswer3;
                                    },
                                  );
                                },
                                child: AnimatedContainer(
                                  duration: const Duration(milliseconds: 300),
                                  curve: Curves.fastLinearToSlowEaseIn,
                                  height: isTapped ? 45 : 50,
                                  width: isTapped ? 45 : 50,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                  ),
                                  child: AnimatedBuilder(
                                    animation: _arrowAnimationController3!,
                                    builder: (context, child) =>
                                        Transform.rotate(
                                      angle: _arrowAnimation3!.value,
                                      child: const Icon(
                                        Icons.expand_more,
                                        size: 30.0,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    _showAnswer3
                        ? Padding(
                            padding: const EdgeInsets.all(0.0),
                            child: Card(
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
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(13),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(12.0),
                                  child: Text(
                                    'The amount you earn as a rider depends on the number of deliveries you make and the distance you travel. You will receive a percentage of the delivery fee for each order you complete.',
                                    style: GoogleFonts.raleway(
                                      fontWeight: FontWeight.w500,
                                      letterSpacing: .15,
                                    ),
                                    // textAlign: TextAlign.justify,
                                  ),
                                ),
                              ),
                            ),
                          )
                        : const SizedBox(),
                    addVertical(7),
                    Card(
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
                        height: 60,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(right: 15.0),
                          child: Row(
                            children: [
                              Expanded(
                                child: Center(
                                  child: Align(
                                    alignment: Alignment.centerLeft,
                                    child: Padding(
                                      padding: const EdgeInsets.all(12.0),
                                      child: Text(
                                        'How do I navigate to the customer\'s location?',
                                        style: GoogleFonts.raleway(
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              InkWell(
                                splashColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                onHighlightChanged: (value) {
                                  setState(() {
                                    isTapped = value;
                                  });
                                },
                                onTap: () {
                                  setState(
                                    () {
                                      _arrowAnimationController4!.isCompleted
                                          ? _arrowAnimationController4!
                                              .reverse()
                                          : _arrowAnimationController4!
                                              .forward();
                                      _showAnswer4 = !_showAnswer4;
                                    },
                                  );
                                },
                                child: AnimatedContainer(
                                  duration: const Duration(milliseconds: 300),
                                  curve: Curves.fastLinearToSlowEaseIn,
                                  height: isTapped ? 45 : 50,
                                  width: isTapped ? 45 : 50,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                  ),
                                  child: AnimatedBuilder(
                                    animation: _arrowAnimationController4!,
                                    builder: (context, child) =>
                                        Transform.rotate(
                                      angle: _arrowAnimation4!.value,
                                      child: const Icon(
                                        Icons.expand_more,
                                        size: 30.0,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    _showAnswer4
                        ? Padding(
                            padding: const EdgeInsets.all(0.0),
                            child: Card(
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
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(13),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(12.0),
                                  child: Text(
                                    'The app provides turn-by-turn directions to the customer\'s location. You can also use your preferred navigation app to get directions.',
                                    style: GoogleFonts.raleway(
                                      fontWeight: FontWeight.w500,
                                      letterSpacing: .15,
                                    ),
                                    // textAlign: TextAlign.justify,
                                  ),
                                ),
                              ),
                            ),
                          )
                        : const SizedBox(),
                    addVertical(7),
                    Card(
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
                        height: 70,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(right: 15.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Expanded(
                                child: Center(
                                  child: Align(
                                    alignment: Alignment.centerLeft,
                                    child: Padding(
                                      padding: const EdgeInsets.all(12.0),
                                      child: Text(
                                        'What should I do if there is an issue with the order?',
                                        style: GoogleFonts.raleway(
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              InkWell(
                                splashColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                onHighlightChanged: (value) {
                                  setState(() {
                                    isTapped = value;
                                  });
                                },
                                onTap: () {
                                  setState(
                                    () {
                                      _arrowAnimationController5!.isCompleted
                                          ? _arrowAnimationController5!
                                              .reverse()
                                          : _arrowAnimationController5!
                                              .forward();
                                      _showAnswer5 = !_showAnswer5;
                                    },
                                  );
                                },
                                child: AnimatedContainer(
                                  duration: const Duration(milliseconds: 300),
                                  curve: Curves.fastLinearToSlowEaseIn,
                                  height: isTapped ? 45 : 50,
                                  width: isTapped ? 45 : 50,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                  ),
                                  child: AnimatedBuilder(
                                    animation: _arrowAnimationController5!,
                                    builder: (context, child) =>
                                        Transform.rotate(
                                      angle: _arrowAnimation5!.value,
                                      child: const Icon(
                                        Icons.expand_more,
                                        size: 30.0,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    _showAnswer5
                        ? Padding(
                            padding: const EdgeInsets.all(0.0),
                            child: Card(
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
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(13),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(12.0),
                                  child: Text(
                                    'If there is an issue with the order, such as a missing item or incorrect address, you can contact the customer through the app or contact customer support for assistance.',
                                    style: GoogleFonts.raleway(
                                      fontWeight: FontWeight.w500,
                                      letterSpacing: .15,
                                    ),
                                    // textAlign: TextAlign.justify,
                                  ),
                                ),
                              ),
                            ),
                          )
                        : const SizedBox(),
                    addVertical(7),
                    Card(
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
                        height: 60,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(right: 15.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Expanded(
                                child: Center(
                                  child: Align(
                                    alignment: Alignment.centerLeft,
                                    child: Padding(
                                      padding: const EdgeInsets.all(12.0),
                                      child: Text(
                                        'How do I get paid for my deliveries?',
                                        style: GoogleFonts.raleway(
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              InkWell(
                                splashColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                onHighlightChanged: (value) {
                                  setState(() {
                                    isTapped = value;
                                  });
                                },
                                onTap: () {
                                  setState(
                                    () {
                                      _arrowAnimationController6!.isCompleted
                                          ? _arrowAnimationController6!
                                              .reverse()
                                          : _arrowAnimationController6!
                                              .forward();
                                      _showAnswer6 = !_showAnswer6;
                                    },
                                  );
                                },
                                child: AnimatedContainer(
                                  duration: const Duration(milliseconds: 300),
                                  curve: Curves.fastLinearToSlowEaseIn,
                                  height: isTapped ? 45 : 50,
                                  width: isTapped ? 45 : 50,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                  ),
                                  child: AnimatedBuilder(
                                    animation: _arrowAnimationController6!,
                                    builder: (context, child) =>
                                        Transform.rotate(
                                      angle: _arrowAnimation6!.value,
                                      child: const Icon(
                                        Icons.expand_more,
                                        size: 30.0,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    _showAnswer6
                        ? Padding(
                            padding: const EdgeInsets.all(0.0),
                            child: Card(
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
                                // height: 118,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(13),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(15.0),
                                  child: Text(
                                    'You will receive payment for your deliveries directly to your account on Desserts to Door. Payment is made as soon as you request for a withdrawal to either your MoMo wallet or your bank account, and you can view your earnings and payment history in the app.',
                                    style: GoogleFonts.raleway(
                                      fontWeight: FontWeight.w500,
                                      letterSpacing: .15,
                                    ),
                                    // textAlign: TextAlign.justify,
                                  ),
                                ),
                              ),
                            ),
                          )
                        : const SizedBox(),
                    addVertical(7),
                  ],
                ),
              ),

              // else blank
            ],
          ),
        ),
      ),
    );
  }
}
