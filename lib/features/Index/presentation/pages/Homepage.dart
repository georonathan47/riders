import 'dart:async';

import 'package:avatar_glow/avatar_glow.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:platform_maps_flutter/platform_maps_flutter.dart';
import 'package:riders/core/constants/colors.dart';
import 'package:riders/core/utils/UtilService.dart';
import 'package:riders/features/Generic/drawer.dart';

import '../../../../core/constants/widgetFunctions.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  static const CameraPosition koforidua = CameraPosition(
    target: LatLng(6.078443, -0.271394),
    zoom: 16,
  );
  // final Set<Marker> _markers = {};
  final Completer<PlatformMapController> _controller = Completer();

  bool hasBeenTapped = false;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        actions: [
          AvatarGlow(
            child: CircleAvatar(
              child: Image.asset('assets/images/logo.png', height: 65),
            ),
            endRadius: 65,
            glowColor: primaryColor,
          ),
        ],
        title: Text(
          ' ',
          style: GoogleFonts.poppins(),
        ),
        centerTitle: true,
        leading: Builder(
          builder: (context) {
            return IconButton(
              icon: const Icon(
                Icons.menu,
                size: 25,
                // color: Colors.black,
              ),
              onPressed: () => Scaffold.of(context).openDrawer(),
            );
          },
        ),
      ),
      drawer: Sidebar(context, email: 'rider@gmail.com', name: 'Kojo Rider'),
      body: SizedBox(
        height: size.height,
        child: Stack(
          fit: StackFit.expand,
          children: [
            PlatformMap(
              initialCameraPosition: koforidua,
              mapType: MapType.satellite,
              onMapCreated: (PlatformMapController controller) {
                _controller.complete(controller);
              },
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: !hasBeenTapped
                  ? Container(
                      height: size.height * 0.11,
                      width: size.width * 0.75,
                      margin: const EdgeInsets.only(
                        top: 25,
                        right: 15,
                        left: 25,
                        bottom: 10,
                      ),
                      // padding: const EdgeInsets.all(7),
                      decoration: const BoxDecoration(
                        // color: Colors.white70,
                        gradient: LinearGradient(
                            colors: [primaryColor, Colors.lightBlue]),
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(35),
                          topRight: Radius.circular(35),
                          bottomLeft: Radius.circular(35),
                          bottomRight: Radius.circular(35),
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Row(
                          children: [
                            Text(
                              'Delivery Available',
                              style: GoogleFonts.poppins(
                                fontWeight: FontWeight.w400,
                                fontSize: 18,
                                color: Colors.white,
                              ),
                            ),
                            addHorizontal(25),
                            Column(
                              children: [
                                ElevatedButton(
                                  onPressed: () {
                                    UtilService util = UtilService();
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
                                      fontWeight: FontWeight.w400,
                                      fontSize: 16,
                                    ),
                                  ),
                                ),
                                ElevatedButton(
                                  onPressed: () {
                                    UtilService util = UtilService();
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
                                      fontWeight: FontWeight.w400,
                                      fontSize: 16,
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
