import 'package:avatar_glow/avatar_glow.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:riders/core/constants/colors.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../../core/constants/widgetFunctions.dart';

class AccountScreen extends StatefulWidget {
  const AccountScreen();

  @override
  State<AccountScreen> createState() => _AccountScreenState();
}

class _AccountScreenState extends State<AccountScreen> {
  Future<void> _makePhoneCall(String phoneNumber) async {
    final Uri launchUri = Uri(
      scheme: 'tel',
      path: phoneNumber,
    );
    await canLaunchUrl(launchUri);
  }

  void initState() {
    super.initState();
    // initDB();
  }

  @override
  void dispose() {
    // _makePhoneCall();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // backgroundColor: Colors.white,
        elevation: 1,
        title: Text(
          'Account',
          style: GoogleFonts.raleway(
            // color: LABEL_COLOR,
            fontSize: 20,
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(5),
            child: CircleAvatar(
              backgroundColor: Colors.white70,
              child: AvatarGlow(
                endRadius: 53,
                duration: const Duration(milliseconds: 1500),
                child: Image.asset(
                  "assets/images/logo.png",
                  height: 65,
                ),
              ),
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          addVertical(10),
          Expanded(
            child: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Card(
                      elevation: 1,
                      child: Container(
                        child: Row(
                          children: [
                            Container(
                              height: 40,
                              width: 40,
                              decoration: BoxDecoration(
                                color: primaryColor,
                                borderRadius: BorderRadius.circular(15),
                              ),
                              child: Container(
                                child: const Center(
                                  child: Image(
                                    height: 18,
                                    width: 18,
                                    color: Colors.white,
                                    image: AssetImage("assets/images/userIcon.png"),
                                  ),
                                ),
                              ),
                            ),
                            addHorizontal(7),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  child: Text(
                                    "Profile",
                                    style: GoogleFonts.raleway(
                                      fontSize: 13,
                                      fontWeight: FontWeight.w700,
                                      // color: LABEL_COLOR,
                                    ),
                                  ),
                                ),
                                addHorizontal(5),
                                Container(
                                  child: Text(
                                    "View your account details below",
                                    style: GoogleFonts.raleway(
                                      fontSize: 11.5,
                                      fontWeight: FontWeight.w400,
                                      // color: LABEL_COLOR,
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    addVertical(25),
                    ProfileCard(context),
                    addVertical(17),
                    Card(
                      elevation: 1,
                      child: Row(
                        children: [
                          Container(
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                              color: primaryColor,
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Container(
                              child: const Center(
                                child: Image(
                                  height: 20,
                                  width: 20,
                                  color: Colors.white,
                                  image: AssetImage(
                                    "assets/images/load.png",
                                  ),
                                ),
                              ),
                            ),
                          ),
                          addHorizontal(7),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                child: Text(
                                  "Help and Feedback",
                                  style: GoogleFonts.raleway(
                                    fontSize: 13,
                                    fontWeight: FontWeight.w700,
                                    // color: LABEL_COLOR,
                                  ),
                                ),
                              ),
                              addHorizontal(5),
                              Container(
                                child: Text(
                                  "Reach us with your feedback and questions",
                                  style: GoogleFonts.raleway(
                                    fontSize: 11.5,
                                    fontWeight: FontWeight.w400,
                                    // color: LABEL_COLOR,
                                  ),
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                    addVertical(25),
                    FeedbackCard(context),
                    addVertical(18),
                    // Row(
                    //   children: [
                    //     Container(
                    //       height: 40,
                    //       width: 40,
                    //       decoration: BoxDecoration(
                    //         color: primaryColor,
                    //         borderRadius: BorderRadius.circular(8),
                    //       ),
                    //       child: Container(
                    //         child: const Center(
                    //           child: Image(
                    //             height: 20,
                    //             width: 20,
                    //             image: AssetImage(
                    //               "assets/images/logout.png",
                    //             ),
                    //           ),
                    //         ),
                    //       ),
                    //     ),
                    //     const SizedBox(
                    //       width: 7,
                    //     ),
                    //     Column(
                    //       crossAxisAlignment: CrossAxisAlignment.start,
                    //       children: [
                    //         Container(
                    //           child: Text(
                    //             "Account Session",
                    //             style: GoogleFonts.raleway(
                    //               fontSize: 13,
                    //               fontWeight: FontWeight.w700,
                    //               // color: LABEL_COLOR,
                    //             ),
                    //           ),
                    //         ),
                    //         addHorizontal(5),
                    //         Container(
                    //           child: Text(
                    //             "End your current active session",
                    //             style: GoogleFonts.raleway(
                    //               fontSize: 11.5,
                    //               fontWeight: FontWeight.w400,
                    //               // color: LABEL_COLOR,
                    //             ),
                    //           ),
                    //         )
                    //       ],
                    //     ),
                    //   ],
                    // ),
                    // addVertical(18),
                    // GestureDetector(
                    //   onTap: () {
                    //     new UtilityService().confirmationBox(
                    //       title: 'Logout',
                    //       message:
                    //           '${customer.fname}, logging out will end your current session.\n Are you sure you want to logout?',
                    //       context: context,
                    //       yesButtonColor: Colors.red,
                    //       noButtonColor: Colors.teal,
                    //       onYes: () async {
                    //         Navigator.pop(context);
                    //         showDialog(
                    //           context: context,
                    //           builder: (context) {
                    //             return ProgressDialog(
                    //               displayMessage:
                    //                   '👋 Logging out \nPlease wait...',
                    //             );
                    //           },
                    //         );
                    //         await clearDB();
                    //         await secureStorage.deleteAll();
                    //         final logoutURL = Uri.parse(
                    //             "https://auth.portal.staging.property.digitalcitysolutions.net/account/logoff");
                    //         final response = await http.get(logoutURL);
                    //         print(
                    //           'logout: ${response.request} ${response.statusCode} ${response.body}',
                    //         );
                    //         await secureStorage.delete(key: "refresh_token");
                    //         await secureStorage.delete(key: "access_token");
                    //         await secureStorage.delete(key: "id_token");
                    //         print("*-*-*-*-*-*-*-*-*-----");
                    //         print(response.statusCode);
                    //         print("*-*-*-*-*-*-*-*-*-----");
                    //         if (response.statusCode == 200) {
                    //           logoutAction().then(
                    //             (value) => Navigator.pushReplacement(
                    //               context,
                    //               MaterialPageRoute(
                    //                 builder: (context) =>
                    //                     const LoginAndRegister(),
                    //               ),
                    //             ),
                    //           );
                    //           // ? CLEAR AUTH SESSION
                    //           return await FlutterAppAuth()
                    //               .endSession(
                    //                 EndSessionRequest(
                    //                   idTokenHint: DISCOVERY,
                    //                   postLogoutRedirectUrl: AUTH0_REDIRECT_URI,
                    //                   serviceConfiguration:
                    //                       AuthorizationServiceConfiguration(
                    //                     authorizationEndpoint:
                    //                         AUTH0_REDIRECT_URI,
                    //                     tokenEndpoint: REFRESH_TOKEN_KEY,
                    //                     endSessionEndpoint: LOGOUT_URL,
                    //                   ),
                    //                 ),
                    //               )
                    //               .then(
                    //                 (value) => AuthorizationTokenRequest(
                    //                   AUTH0_CLIENT_ID,
                    //                   AUTH0_REDIRECT_URI,
                    //                   issuer: AUTH0_ISSUER,
                    //                   discoveryUrl: DISCOVERY,
                    //                   scopes: [
                    //                     'openid',
                    //                     'profile',
                    //                     'offline_access'
                    //                   ],
                    //                   promptValues: ['login'],
                    //                 ),
                    //               );
                    //         }
                    //       },
                    //       onNo: () {
                    //         Navigator.pop(context);
                    //       },
                    //     );
                    //   },
                    //   child: Container(
                    //     height: 50,
                    //     width: MediaQuery.of(context).size.width,
                    //     decoration: BoxDecoration(
                    //       borderRadius: BorderRadius.circular(12),
                    //       color: Colors.pink.shade100,
                    //     ),
                    //     child: Padding(
                    //       padding: const EdgeInsets.all(16.0),
                    //       child: Row(
                    //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    //         children: [
                    //           Container(
                    //             child: Text(
                    //               "Log out",
                    //               style: GoogleFonts.raleway(
                    //                 fontSize: 14,
                    //                 fontWeight: FontWeight.w700,
                    //                 color: Colors.pink,
                    //               ),
                    //             ),
                    //           ),
                    //           Container(
                    //             child: const Icon(
                    //               Icons.logout,
                    //               size: 20,
                    //               color: Colors.pink,
                    //             ),
                    //           ),
                    //         ],
                    //       ),
                    //     ),
                    //   ),
                    // ),

                    addVertical(18),
                    Center(
                      child: Text(
                        // 'Version: $VERSION',
                        '',
                        style: GoogleFonts.raleway(
                            // color: LABEL_COLOR,
                            ),
                      ),
                    ),
                    addVertical(18),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Container FeedbackCard(BuildContext context) {
    return Container(
      height: 160,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.white12,
            blurRadius: 5.0,
          ),
        ],
        // color: Colors.white,
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 0, top: 8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            GestureDetector(
              // onTap: () => Navigator.push(
              //   context,
              //   MaterialPageRoute(
              //     builder: (context) => const FAQsScreen(),
              // ),
              // ),
              child: Container(
                // color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.only(left: 33.0),
                  child: GestureDetector(
                    // onTap: () => Navigator.push(
                    //   context,
                    //   MaterialPageRoute(
                    //     builder: (context) => const FAQsScreen(),
                    //   ),
                    // ),
                    child: Container(
                      child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              child: Text(
                                "FAQs",
                                style: GoogleFonts.raleway(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                  // color: LABEL_COLOR,
                                  letterSpacing: 1,
                                ),
                              ),
                            ),
                            Container(
                              child: Icon(
                                Icons.arrow_forward_ios_outlined,
                                size: 20,
                                // color: LABEL_COLOR,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Divider(
              endIndent: 0,
              indent: 0,
              height: 0,
              color: Colors.grey.withOpacity(0.8),
            ),
            addVertical(15),
            Padding(
              padding: const EdgeInsets.only(left: 33.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    child: Text(
                      "Contact Us",
                      style: GoogleFonts.raleway(
                        fontSize: 14,
                        fontWeight: FontWeight.w300,
                        // color: LABEL_COLOR,
                      ),
                    ),
                  ),
                  addVertical(4),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 8,
                      bottom: 8,
                    ),
                    child: GestureDetector(
                      onTap: () {
                        _makePhoneCall("+233558665605");
                      },
                      child: Row(
                        children: [
                          Container(
                            height: 30,
                            width: 30,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(25),
                            ),
                            child: Icon(
                              Icons.phone,
                              size: 26,
                              color: Colors.teal,
                            ),
                          ),
                          addHorizontal(17),
                          Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Container(
                              child: Text(
                                "Give us a call",
                                style: GoogleFonts.raleway(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                  // color: LABEL_COLOR,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Container ProfileCard(BuildContext context) {
    return Container(
      height: 160,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        // color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.white12,
            blurRadius: 5.0,
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 12, top: 8),
            child: Row(
              children: [
                AvatarGlow(
                  endRadius: 35,
                  glowColor: primaryColor.withAlpha(15),
                  child: Container(
                    child: const CircleAvatar(
                      backgroundColor: Colors.white,
                      maxRadius: 23.5,
                      backgroundImage: AssetImage("assets/images/userIcon.png"),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 12.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        child: Text(
                          'Rider Name',
                          style: GoogleFonts.raleway(
                            fontSize: 14,
                            fontWeight: FontWeight.w300,
                            // color: LABEL_COLOR,
                          ),
                        ),
                      ),
                      addVertical(6),
                      Container(
                        child: Text(
                          'Big Danny',
                          style: GoogleFonts.raleway(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            letterSpacing: .45,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          addVertical(17),
          Divider(
            endIndent: 0,
            indent: 0,
            height: 0,
            color: Colors.grey.withOpacity(0.8),
          ),
          addVertical(15),
          Padding(
            padding: const EdgeInsets.only(left: 33.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  child: Text(
                    "Phone",
                    style: GoogleFonts.raleway(
                      fontSize: 14,
                      fontWeight: FontWeight.w300,
                      // color: LABEL_COLOR,
                    ),
                  ),
                ),
                addVertical(6),
                Container(
                  child: Text(
                    '0201154679',
                    style: GoogleFonts.raleway(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      // color: LABEL_COLOR,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
