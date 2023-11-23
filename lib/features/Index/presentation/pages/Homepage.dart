import 'dart:async';

import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:riders/core/constants/colors.dart';
import 'package:riders/core/constants/widgetFunctions.dart';
import 'package:riders/core/utils/UtilService.dart';
import 'package:riders/core/utils/location.dart';

import '../../../../Splash.dart';

class Homepage extends StatefulWidget {
  final String? username;
  const Homepage({Key? key, this.username}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

UtilService util = UtilService();

class _HomepageState extends State<Homepage> {
  final Completer<GoogleMapController> _controller = Completer();

  @override
  void initState() {
    super.initState();
  }

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
            FutureBuilder(
              future: determinePosition(),
              builder: (ctx, snapshot) {
                if (snapshot.hasData) {
                  final location = CameraPosition(
                    target: LatLng(
                      snapshot.requireData.latitude,
                      snapshot.requireData.longitude,
                    ),
                    zoom: 16,
                  );
                  return GoogleMap(
                    markers: markers,
                    myLocationEnabled: true,
                    mapType: MapType.normal,
                    zoomControlsEnabled: false,
                    zoomGesturesEnabled: false,
                    myLocationButtonEnabled: false,
                    initialCameraPosition: location,
                    onMapCreated: (controller) {
                      _controller.complete(controller);
                    },
                  );
                }
                if (snapshot.connectionState == ConnectionState.active) {
                  return const Center(
                    child: CircularProgressIndicator.adaptive(),
                  );
                }
                return const Center(
                  child: CircularProgressIndicator.adaptive(),
                );
              },
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: hasBeenTapped
                  ? Container(
                      height: size.height * 0.125,
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
                              'Delivery Available.\nTap to accept!',
                              style: GoogleFonts.lato(
                                fontWeight: FontWeight.w400,
                                fontSize: 16,
                                color: Colors.white,
                              ),
                            ),
                            Column(
                              children: [
                                ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.teal,
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
                                    backgroundColor: Colors.red,
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
                  : null,
            ),
          ],
        ),
      ),
    );
  }
}
