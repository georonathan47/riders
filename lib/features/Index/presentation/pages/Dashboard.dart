import 'package:avatar_glow/avatar_glow.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../core/components/progressDialog.dart';
import '../../../../core/constants/widgetFunctions.dart';
import '../../../../core/utils/appConfig.dart';
import '../../../../main.dart';
import '../../../Generic/drawer.dart';
import '../../../Generic/features/authentication/presentation/pages/login.dart';
import '../../../Generic/features/authentication/presentation/widgets/dashboardCards.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
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
            glowColor: Colors.white,
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
      drawer: Sidebar(context, email: 'rider@gmail.com', name: username),
      body: screenBody(
        MediaQuery.of(context).size,
        children: [
          SingleChildScrollView(
            physics: const AlwaysScrollableScrollPhysics(),
            child: Column(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    addVertical(10),
                    Row(
                      children: [
                        Expanded(
                          child: Text(
                            // (context
                            //             .read<AuthProvider>()
                            //             .login!
                            //             .fname !=
                            //         null)
                            //     ? 'Welcome, ${context.read<RegistrationProvider>().customer!.fname}.'
                            'Welcome, Big Danny.',
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
                              label: 'Total Earnings',
                              value: 'GH¢ 0.00',
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
                              label: '',
                              value: '0',
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
                            onTap: () async {
                              try {
                                final config =
                                    await AppConfig.forEnvironment(envVar);
                                showDialog(
                                  context: context,
                                  builder: (context) {
                                    return const ProgressDialog(
                                        displayMessage:
                                            'Fetching wallet balance...\nPlease wait.');
                                  },
                                );
                              } catch (e, s) {
                                print('Error: $e\n StackTrace: $s');
                              }
                            },
                            child: DashboardCardComponent(
                                icon: const Icon(
                                  Icons.wallet_membership_outlined,
                                  color: Color.fromARGB(255, 148, 113, 223),
                                  size: 30,
                                ),
                                label: 'Recent Rides',
                                value:
                                    // walletBalance == null
                                    'GH¢ 0.00'
                                // : 'GH¢ ${double.parse(walletBalance.toString()).toStringAsFixed(2)}',
                                // value: 'GH¢ $walletBalance',
                                ),
                          ),
                        ),
                        addHorizontal(7.5),
                        Expanded(
                          child: GestureDetector(
                            child: const DashboardCardComponent(
                              icon: Icon(
                                Icons.payment_outlined,
                                color: Color.fromARGB(182, 173, 101, 109),
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
                    addVertical(30),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
