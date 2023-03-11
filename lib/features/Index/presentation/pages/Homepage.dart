import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
// import 'package:platform_maps_flutter/platform_maps_flutter.dart';
import 'package:riders/core/constants/colors.dart';
import 'package:riders/core/constants/widgetFunctions.dart';
import 'package:riders/core/utils/UtilService.dart';

// import '../../../../core/constants/widgetFunctions.dart';

class Homepage extends StatefulWidget {
  final String? username;
  const Homepage({Key? key, this.username}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

UtilService util = UtilService();

class _HomepageState extends State<Homepage> {
  static const CameraPosition koforidua = CameraPosition(
    target: LatLng(6.078443, -0.271394),
    zoom: 14,
  );
  // final Set<Marker> _markers = {};
  final Completer<GoogleMapController> _controller = Completer();

  bool hasBeenTapped = false;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: appBar('Home'),
      body: SizedBox(
        height: size.height,
        child: Stack(
          fit: StackFit.expand,
          children: [
            GoogleMap(
              initialCameraPosition: koforidua,
              mapType: MapType.normal,
              onMapCreated: (GoogleMapController controller) {
                _controller.complete(controller);
              },
            ),
            Align(
                alignment: Alignment.bottomCenter,
                child: // hasBeenTapped
                    // ?
                    Container(
                  height: size.height * 0.115,
                  width: size.width * 0.75,
                  margin: const EdgeInsets.only(
                    top: 25,
                    right: 15,
                    left: 25,
                    bottom: 10,
                  ),
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [primaryColor, secondLight],
                    ),
                    borderRadius: BorderRadius.circular(35),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Delivery\nAvailable',
                          style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w400,
                            fontSize: 18,
                            color: Colors.white,
                          ),
                        ),
                        Column(
                          children: [
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.teal[300],
                                shape: const StadiumBorder(),
                              ),
                              onPressed: () {
                                util.newOrderToast(
                                  context,
                                  title: 'Order Accepted',
                                  desc: 'You have accepted order D2D-01235',
                                );
                                setState(() {
                                  hasBeenTapped = true;
                                });
                              },
                              child: Text(
                                'Accept',
                                style: GoogleFonts.poppins(
                                  fontSize: 14,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.red[300],
                                shape: const StadiumBorder(),
                              ),
                              onPressed: () {
                                util.showSuccessToast(
                                  context,
                                  title: 'Order Cancelled Successfully.',
                                  desc: 'You have cancelled order D2D-01235',
                                );
                                setState(() {
                                  hasBeenTapped = true;
                                });
                              },
                              child: Text(
                                'Cancel',
                                style: GoogleFonts.poppins(
                                  fontSize: 14,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                )
                // : null,
                ),
          ],
        ),
      ),
    );
  }
}
