import 'dart:convert';
import 'dart:io';

import 'package:avatar_glow/avatar_glow.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:http/http.dart';
import 'package:provider/provider.dart';

import '../../../../core/components/progressDialog.dart';
import '../../../../core/constants/colors.dart';
import '../../../../core/constants/widgetFunctions.dart';
import '../../../../core/services/apiService.dart';
import '../../../../core/utils/appConfig.dart';
import '../../../../main.dart';
import '../../../Generic/drawer.dart';
import '../../../Generic/features/authentication/presentation/pages/login.dart';
import '../../../Generic/features/authentication/presentation/provider/authProvider.dart';
import '../../../Generic/features/authentication/presentation/widgets/dashboardCards.dart';
import '../widgets/EarningsCard.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

dynamic recentRides;
dynamic configure;

class _DashboardState extends State<Dashboard> {
  @override
  void initState() {
    super.initState();
    recentRides == null ? fetchCurrentRides() : null;
  }

  Future fetchCurrentRides() async {
    final config = await AppConfig.forEnvironment(envVar);
    try {
      showDialog(
        context: context,
        builder: (context) => ProgressDialog(
          displayMessage: "We're geting things ready for you.\nPlease wait.",
        ),
      );
      Response? response = await ApiService().getDataWithAuth(
        url: config.fetchRecentRides,
        auth: context.read<AuthProvider>().accessToken,
      );

      if (response!.statusCode == 200) {
        dynamic fetchRidesResponse = jsonDecode(response.body);
        print(fetchRidesResponse);
        Navigator.pop(context);
        setState(() {
          recentRides = fetchRidesResponse['count'];
        });
      } else {
        Navigator.pop(context);
      }
    } on SocketException catch (e) {
      print(e);
      Navigator.pop(context);
    }
  }

  @override
  Widget build(BuildContext context) {
    String userName = context.read<AuthProvider>().responseModel!.username!;
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        elevation: .75,
        actions: [
          AvatarGlow(
            child: CircleAvatar(
              child: Image.asset('assets/images/logo.png', height: 65),
              backgroundColor: Colors.white70,
            ),
            endRadius: 65,
            duration: const Duration(milliseconds: 1500),
            glowColor: secondColor,
          ),
        ],
        title: Text(
          'Dashboard',
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
      drawer: Sidebar(
        context,
        email: 'rider@gmail.com',
        name: username,
        version: appVersion,
      ),
      body: RefreshIndicator(
        onRefresh: () => fetchCurrentRides(),
        child: screenBody(
          MediaQuery.of(context).size,
          children: [
            addVertical(10),
            Row(
              children: [
                Expanded(
                  child: Text(
                    (context.read<AuthProvider>().responseModel!.username !=
                            null)
                        ? 'Welcome, ${userName.toUpperCase()}.'
                        : 'Welcome, Rider!',
                    style: GoogleFonts.raleway(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ],
            ),
            const Divider(thickness: 0.5),
            addVertical(5),
            Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      // Navigator.push(
                      //   context,
                      //   MaterialPageRoute(
                      //     builder: (context) =>
                      //         const PropertySummaryScreen(
                      //       propertyList: [],
                      //     ),
                      //   ),
                      // );
                    },
                    child: const DashboardCardComponent(
                      icon: Icon(
                        Icons.home_outlined,
                        size: 30,
                      ),
                      label: 'Total Rides',
                      value: '0',
                    ),
                  ),
                ),
                addHorizontal(10),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      // Navigator.push(
                      //   context,
                      //   MaterialPageRoute(
                      //     builder: (context) =>
                      //         const OutstandingBillsSummaryScreen(
                      //       totalBillCount: '0',
                      //       billList: [],
                      //     ),
                      //   ),
                      // );
                    },
                    child: const DashboardCardComponent(
                      icon: Icon(
                        Icons.description_outlined,
                        size: 30,
                      ),
                      label: 'Weekly Earnings',
                      value: 'GH¢ 0.00',
                    ),
                  ),
                ),
              ],
            ),
            addVertical(7.5),
            Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: () async {},
                    child: DashboardCardComponent(
                      icon: const Icon(
                        Icons.wallet_membership_outlined,
                        size: 30,
                      ),
                      label: 'Recent Rides',
                      value: recentRides == null ? '0' : '$recentRides',
                    ),
                  ),
                ),
                addHorizontal(7.5),
                Expanded(
                  child: GestureDetector(
                    child: const DashboardCardComponent(
                      icon: Icon(
                        Icons.payment_outlined,
                        size: 30,
                      ),
                      label: 'Current Earnings',
                      value: 'GH¢ 0.00',
                    ),
                  ),
                ),
              ],
            ),
            const Divider(thickness: 0.5),
            addVertical(10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                mainText16('Rides History'),
                const Divider(thickness: 0.5),
                MediaQuery.removePadding(
                  context: context,
                  removeTop: true,
                  removeBottom: true,
                  child: SizedBox(
                    height: size.height,
                    child: ListView.separated(
                      physics: const BouncingScrollPhysics(),
                      itemBuilder: (context, index) {
                        var counter = index + 1;
                        print(context.read<AuthProvider>().accessToken);
                        return EarningsCard(
                          index: counter,
                          data: [],
                        );
                      },
                      separatorBuilder: (context, index) => addVertical(5),
                      itemCount: recentRides == null ? 0 : recentRides,
                      // itemCount: 5,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
