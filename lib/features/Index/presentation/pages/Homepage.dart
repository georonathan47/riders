import 'dart:async';

import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
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
LatLng? initialPosition;
LatLng? currentLocation;
Set<Marker> markers = {};
Set<Polyline> polylines = {};

class _HomepageState extends State<Homepage> {
  Future<Position> determinePosition() async {
    bool serviceEnabled;
    LocationPermission permission;

    // Test if location services are enabled.
    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      return Future.error('Location services are disabled.');
    }

    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        return Future.error('Location permissions are denied');
      }
    }

    if (permission == LocationPermission.deniedForever) {
      return Future.error(
          'Location permissions are permanently denied, we cannot request permissions.');
    }
    return await Geolocator.getCurrentPosition();
  }

  Future getCurrentLocation() async {
    var position = await GeolocatorPlatform.instance.getCurrentPosition(
      locationSettings: const LocationSettings(
        accuracy: LocationAccuracy.bestForNavigation,
      ),
    );

    setState(() {
      initialPosition = LatLng(position.latitude, position.longitude);
      currentLocation = initialPosition;
      setMarker(currentLocation!, context);

      print('This is my currentLocation : $currentLocation');
    });
  }

  setMarker(LatLng point, BuildContext context) {
    setState(
      () {
        markers.add(
          Marker(
            markerId: const MarkerId('marker'),
            position: point,
            icon: BitmapDescriptor.defaultMarker,
            draggable: true,
            onDragEnd: (newPoint) {
              print('lat: ${newPoint.latitude}, lng: ${newPoint.longitude}');
              setMarker(newPoint, context);
            },
          ),
        );
      },
    );
  }

  static CameraPosition koforidua = CameraPosition(
    target: currentLocation!,
    zoom: 16,
  );

  final Completer<GoogleMapController> _controller = Completer();

  @override
  void initState() {
    super.initState();
    determinePosition();
    getCurrentLocation();
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
            currentLocation == null
                ? Center(child: const CircularProgressIndicator())
                : GoogleMap(
                    // polylines: polylines,
                    myLocationEnabled: true,
                    myLocationButtonEnabled: false,
                    initialCameraPosition: koforidua,
                    mapType: MapType.normal,
                    markers: markers,
                    zoomControlsEnabled: false,
                    zoomGesturesEnabled: false,
                    onMapCreated: (GoogleMapController controller) {
                      _controller.complete(controller);
                      controller.setMapStyle('''
                      [
                          {
                              "featureType": "all",
                              "elementType": "all",
                              "stylers": [
                                  {
                                      "saturation": -50
                                  },
                                  {
                                      "gamma": 0.75
                                  }
                              ]
                          }
                    ]
                  ''');
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
                                      desc:
                                          'You have cancelled order D2D-01235',
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
